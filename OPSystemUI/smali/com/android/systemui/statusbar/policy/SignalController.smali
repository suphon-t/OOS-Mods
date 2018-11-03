.class public abstract Lcom/android/systemui/statusbar/policy/SignalController;
.super Ljava/lang/Object;
.source "SignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SignalController$State;,
        Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/statusbar/policy/SignalController$State;",
        "I:",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final CHATTY:Z

.field protected static final DEBUG:Z


# instance fields
.field private final mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field protected final mContext:Landroid/content/Context;

.field protected final mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mHistory:[Lcom/android/systemui/statusbar/policy/SignalController$State;

.field private mHistoryIndex:I

.field protected final mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field protected final mTag:Ljava/lang/String;

.field protected final mTransportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    .line 40
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->CHATTY:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p5, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 60
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 63
    iput p3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    .line 64
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    .line 65
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    .line 69
    const/16 v0, 0x40

    new-array v1, v0, [Lcom/android/systemui/statusbar/policy/SignalController$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/SignalController$State;

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    aput-object v3, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 185
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Current State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/SignalController$State;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mHistoryIndex:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 195
    .restart local v1    # "i":I
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mHistoryIndex:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    if-lt v1, v3, :cond_2

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Previous State("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mHistoryIndex:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/SignalController$State;

    and-int/lit8 v5, v1, 0x3f

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 200
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public getContentDescription()I
    .locals 2

    .line 151
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mContentDesc:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    aget v0, v0, v1

    return v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mDiscContentDesc:I

    return v0
.end method

.method public getCurrentIconId()I
    .locals 2

    .line 137
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mSbIcons:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    aget v0, v0, v1

    return v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mSbDiscState:I

    return v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mSbNullState:I

    return v0
.end method

.method protected getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    return-object v0
.end method

.method public getQsCurrentIconId()I
    .locals 2

    .line 124
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mQsIcons:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    aget v0, v0, v1

    return v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mQsDiscState:I

    return v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mQsNullState:I

    return v0
.end method

.method public getState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    return-object v0
.end method

.method protected getStringIfExists(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .line 169
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public isDirty()Z
    .locals 3

    .line 101
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change in state from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyListeners()V
    .locals 1

    .line 203
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 204
    return-void
.end method

.method public abstract notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public notifyListenersIfNecessary()V
    .locals 1

    .line 159
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->saveLastState()V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    .line 163
    :cond_0
    return-void
.end method

.method protected recordLastState()V
    .locals 3

    .line 181
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mHistoryIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mHistoryIndex:I

    and-int/lit8 v1, v1, 0x3f

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    .line 182
    return-void
.end method

.method public resetLastState()V
    .locals 2

    .line 93
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    .line 94
    return-void
.end method

.method public saveLastState()V
    .locals 3

    .line 113
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->recordLastState()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    .line 118
    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 2
    .param p1, "connectedTransports"    # Ljava/util/BitSet;
    .param p2, "validatedTransports"    # Ljava/util/BitSet;

    .line 81
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    .line 83
    return-void
.end method
