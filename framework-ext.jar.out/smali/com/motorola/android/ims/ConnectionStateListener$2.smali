.class Lcom/motorola/android/ims/ConnectionStateListener$2;
.super Landroid/os/Handler;
.source "ConnectionStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/ConnectionStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/ims/ConnectionStateListener;


# direct methods
.method constructor <init>(Lcom/motorola/android/ims/ConnectionStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/motorola/android/ims/ConnectionStateListener$2;->this$0:Lcom/motorola/android/ims/ConnectionStateListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 38
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    .local v0, state:I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 41
    :pswitch_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 43
    iget-object v3, p0, Lcom/motorola/android/ims/ConnectionStateListener$2;->this$0:Lcom/motorola/android/ims/ConnectionStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/motorola/android/ims/ConnectionStateListener;->processImsConnected(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/ims/ConnectionStateListener$2;->this$0:Lcom/motorola/android/ims/ConnectionStateListener;

    invoke-virtual {v1}, Lcom/motorola/android/ims/ConnectionStateListener;->processImsDisconnected()V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
