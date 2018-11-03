.class public final Lcom/google/protobuf/nano/MessageNanoPrinter;
.super Ljava/lang/Object;
.source "MessageNanoPrinter.java"


# direct methods
.method private static appendQuotedBytes([BLjava/lang/StringBuffer;)V
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "builder"    # Ljava/lang/StringBuffer;

    .line 257
    if-nez p0, :cond_0

    .line 258
    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    return-void

    .line 262
    :cond_0
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 264
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 265
    .local v3, "ch":I
    const/16 v4, 0x5c

    if-eq v3, v4, :cond_3

    if-ne v3, v0, :cond_1

    goto :goto_1

    .line 267
    :cond_1
    const/16 v4, 0x20

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_2

    .line 268
    int-to-char v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 270
    :cond_2
    const-string v4, "\\%03o"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v3    # "ch":I
    goto :goto_2

    .line 266
    .restart local v3    # "ch":I
    :cond_3
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    .end local v3    # "ch":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 274
    return-void
.end method

.method private static deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "identifier"    # Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 212
    .local v0, "out":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 213
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 214
    .local v2, "currentChar":C
    if-nez v1, :cond_0

    .line 215
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 216
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 219
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 212
    .end local v2    # "currentChar":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 241
    .local v0, "strLen":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    .local v1, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 243
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 244
    .local v4, "original":C
    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_0

    const/16 v5, 0x22

    if-eq v4, v5, :cond_0

    const/16 v5, 0x27

    if-eq v4, v5, :cond_0

    .line 245
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 247
    :cond_0
    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .end local v4    # "original":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    .local p0, "message":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    if-nez p0, :cond_0

    .line 63
    const-string v0, ""

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1, p0, v2, v0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    nop

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error printing proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 69
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error printing proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 21
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "indentBuf"    # Ljava/lang/StringBuffer;
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 91
    move-object/from16 v4, p3

    if-nez v2, :cond_0

    goto/16 :goto_a

    .line 97
    :cond_0
    instance-of v0, v2, Lcom/google/protobuf/nano/MessageNano;

    if-eqz v0, :cond_d

    .line 98
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 99
    .local v5, "origIndentBufLength":I
    if-eqz p0, :cond_1

    .line 100
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-static/range {p0 .. p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " <\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v0, "  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 109
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v7, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_8

    aget-object v10, v0, v9

    .line 110
    .local v10, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 111
    .local v11, "modifiers":I
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, "fieldName":Ljava/lang/String;
    const-string v13, "cachedSize"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 114
    nop

    .line 109
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "modifiers":I
    .end local v12    # "fieldName":Ljava/lang/String;
    :cond_2
    move-object/from16 v18, v0

    move/from16 v19, v7

    goto/16 :goto_4

    .line 117
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    .restart local v11    # "modifiers":I
    .restart local v12    # "fieldName":Ljava/lang/String;
    :cond_3
    and-int/lit8 v13, v11, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    and-int/lit8 v13, v11, 0x8

    const/16 v14, 0x8

    if-eq v13, v14, :cond_2

    const-string v13, "_"

    .line 119
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "_"

    .line 120
    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 121
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 122
    .local v13, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 124
    .local v14, "value":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 125
    invoke-virtual {v13}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v15

    .line 128
    .local v15, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v15, v8, :cond_5

    .line 129
    invoke-static {v12, v14, v3, v4}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 137
    move-object/from16 v18, v0

    .line 137
    .end local v15    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    move/from16 v19, v7

    goto :goto_3

    .line 131
    .restart local v15    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    if-nez v14, :cond_6

    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    invoke-static {v14}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    .line 132
    .local v8, "len":I
    :goto_1
    const/16 v16, 0x0

    .line 132
    .local v16, "i":I
    :goto_2
    move/from16 v17, v16

    .line 132
    .end local v16    # "i":I
    .local v17, "i":I
    move-object/from16 v18, v0

    move/from16 v0, v17

    if-ge v0, v8, :cond_4

    .line 133
    .end local v17    # "i":I
    .local v0, "i":I
    move/from16 v19, v7

    invoke-static {v14, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 134
    .local v7, "elem":Ljava/lang/Object;
    invoke-static {v12, v7, v3, v4}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 132
    .end local v7    # "elem":Ljava/lang/Object;
    add-int/lit8 v16, v0, 0x1

    .line 132
    .end local v0    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v0, v18

    move/from16 v7, v19

    goto :goto_2

    .line 137
    .end local v8    # "len":I
    .end local v15    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "i":I
    :goto_3
    goto :goto_4

    .line 138
    :cond_7
    move-object/from16 v18, v0

    move/from16 v19, v7

    invoke-static {v12, v14, v3, v4}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 109
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "modifiers":I
    .end local v12    # "fieldName":Ljava/lang/String;
    .end local v13    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "value":Ljava/lang/Object;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v18

    move/from16 v7, v19

    goto/16 :goto_0

    .line 146
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_b

    aget-object v10, v7, v9

    .line 147
    .local v10, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "name":Ljava/lang/String;
    const-string v0, "set"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 151
    const/4 v0, 0x3

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 153
    .local v12, "subfieldName":Ljava/lang/String;
    const/4 v0, 0x0

    move-object v13, v0

    .line 155
    .local v13, "hazzer":Ljava/lang/reflect/Method;
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v15, 0x0

    :try_start_1
    new-array v0, v15, [Ljava/lang/Class;

    invoke-virtual {v6, v14, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v13, v0

    .line 158
    nop

    .line 160
    new-array v0, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 161
    goto :goto_8

    .line 164
    :cond_9
    const/4 v0, 0x0

    move-object v14, v0

    .line 166
    .local v14, "getter":Ljava/lang/reflect/Method;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v20, v7

    const/4 v15, 0x0

    :try_start_3
    new-array v7, v15, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0

    .line 169
    .end local v14    # "getter":Ljava/lang/reflect/Method;
    .local v0, "getter":Ljava/lang/reflect/Method;
    nop

    .line 171
    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12, v7, v3, v4}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 171
    .end local v0    # "getter":Ljava/lang/reflect/Method;
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "subfieldName":Ljava/lang/String;
    .end local v13    # "hazzer":Ljava/lang/reflect/Method;
    goto :goto_9

    .line 167
    .restart local v10    # "method":Ljava/lang/reflect/Method;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "subfieldName":Ljava/lang/String;
    .restart local v13    # "hazzer":Ljava/lang/reflect/Method;
    .restart local v14    # "getter":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v20, v7

    const/4 v15, 0x0

    .line 168
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_6
    goto :goto_9

    .line 156
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v14    # "getter":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    move-object/from16 v20, v7

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v20, v7

    const/4 v15, 0x0

    .line 157
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_7
    goto :goto_9

    .line 146
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "subfieldName":Ljava/lang/String;
    .end local v13    # "hazzer":Ljava/lang/reflect/Method;
    :cond_a
    :goto_8
    move-object/from16 v20, v7

    const/4 v15, 0x0

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v20

    goto :goto_5

    .line 174
    :cond_b
    if-eqz p0, :cond_c

    .line 175
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 176
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, ">\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    .end local v5    # "origIndentBufLength":I
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    nop

    .line 205
    :goto_a
    move-object/from16 v1, p0

    goto/16 :goto_d

    .line 178
    :cond_d
    instance-of v0, v2, Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 179
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    .line 180
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static/range {p0 .. p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .end local p0    # "identifier":Ljava/lang/String;
    .local v1, "identifier":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 183
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " <\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    .line 185
    .local v7, "origIndentBufLength":I
    const-string v8, "  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v8, "key"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9, v3, v4}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 187
    const-string/jumbo v8, "value"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9, v3, v4}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 188
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 189
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v8, ">\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v7    # "origIndentBufLength":I
    goto :goto_b

    .line 191
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_e
    goto :goto_d

    .line 193
    .end local v1    # "identifier":Ljava/lang/String;
    .restart local p0    # "identifier":Ljava/lang/String;
    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .end local p0    # "identifier":Ljava/lang/String;
    .local v0, "identifier":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 196
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNanoPrinter;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "stringMessage":Ljava/lang/String;
    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    .end local v1    # "stringMessage":Ljava/lang/String;
    goto :goto_c

    :cond_10
    instance-of v1, v2, [B

    if-eqz v1, :cond_11

    .line 199
    move-object v1, v2

    check-cast v1, [B

    invoke-static {v1, v4}, Lcom/google/protobuf/nano/MessageNanoPrinter;->appendQuotedBytes([BLjava/lang/StringBuffer;)V

    goto :goto_c

    .line 201
    :cond_11
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 203
    :goto_c
    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    move-object v1, v0

    .line 205
    .end local v0    # "identifier":Ljava/lang/String;
    .local v1, "identifier":Ljava/lang/String;
    :goto_d
    return-void
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 229
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
