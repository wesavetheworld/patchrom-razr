.class public Lcom/motorola/Camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCamerButtonIntentReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 42
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 44
    .local v1, event:Landroid/view/KeyEvent;
    const/4 v3, 0x0

    .line 46
    .local v3, ifCameraRunning:Z
    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 52
    .local v0, atManager:Landroid/app/ActivityManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 54
    .local v5, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 57
    .local v4, size:I
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_2

    .line 58
    const-string v7, "MotoCamerButtonIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CameraButtonIntentReceiver:onReceive:topActivity is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_2
    if-lez v4, :cond_3

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.motorola.Camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 63
    const/4 v3, 0x1

    .line 65
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_3

    .line 66
    const-string v6, "MotoCamerButtonIntentReceiver"

    const-string v7, "CameraButtonIntentReceiver:onReceive:topActivity Package is camera, will not launch again"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    if-nez v3, :cond_0

    .line 72
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, i:Landroid/content/Intent;
    const-class v6, Lcom/motorola/Camera/Camera;

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 74
    const/high16 v6, 0x1400

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
