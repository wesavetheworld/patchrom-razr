.class Lcom/android/server/AlarmManagerService$ResultReceiver;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .parameter "pi"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 932
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 933
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #calls: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {v3, p1}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    .line 934
    .local v0, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-eqz v0, :cond_1

    .line 935
    iget v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 936
    iget v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v3, :cond_1

    .line 937
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 938
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 940
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 941
    .local v1, fc:Landroid/content/Intent$FilterComparison;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 942
    .local v2, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v2, :cond_0

    .line 943
    new-instance v2, Lcom/android/server/AlarmManagerService$FilterStats;

    .end local v2           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$1;)V

    .line 944
    .restart local v2       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :cond_0
    iget v3, v2, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 950
    .end local v1           #fc:Landroid/content/Intent$FilterComparison;
    .end local v2           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1
    const-string v3, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sending alarm OnFinished "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1510(Lcom/android/server/AlarmManagerService;)I

    .line 953
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)I

    move-result v3

    if-nez v3, :cond_2

    .line 954
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 956
    :cond_2
    monitor-exit v4

    .line 957
    return-void

    .line 956
    .end local v0           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
