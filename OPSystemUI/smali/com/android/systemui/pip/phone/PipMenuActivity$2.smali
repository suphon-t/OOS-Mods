.class Lcom/android/systemui/pip/phone/PipMenuActivity$2;
.super Landroid/os/Handler;
.source "PipMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .line 137
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$602(Lcom/android/systemui/pip/phone/PipMenuActivity;Z)Z

    goto :goto_1

    .line 164
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 165
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string v2, "dismiss_fraction"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$500(Lcom/android/systemui/pip/phone/PipMenuActivity;F)V

    .line 166
    goto :goto_1

    .line 157
    .end local v0    # "data":Landroid/os/Bundle;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 158
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v1, "actions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 159
    .local v1, "actions":Landroid/content/pm/ParceledListSlice;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string v3, "stack_bounds"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 159
    :goto_0
    invoke-static {v2, v3, v4}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$400(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/graphics/Rect;Ljava/util/List;)V

    .line 161
    goto :goto_1

    .line 154
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "actions":Landroid/content/pm/ParceledListSlice;
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$300(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    .line 155
    goto :goto_1

    .line 151
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    .line 152
    goto :goto_1

    .line 142
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 143
    .restart local v0    # "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string v2, "menu_state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "stack_bounds"

    .line 144
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const-string v4, "movement_bounds"

    .line 145
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    const-string v5, "allow_timeout"

    .line 146
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "resize_menu_on_show"

    .line 147
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 143
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivity;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 148
    nop

    .line 173
    .end local v0    # "data":Landroid/os/Bundle;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
