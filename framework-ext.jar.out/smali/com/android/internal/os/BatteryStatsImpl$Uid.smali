.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# instance fields
.field mAudioTurnedOn:Z

.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mCurrentTcpBytesReceived:J

.field mCurrentTcpBytesSent:J

.field mFullWifiLockOut:Z

.field mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mLoadedTcpBytesReceived:J

.field mLoadedTcpBytesSent:J

.field final mPackageStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field final mProcessStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field mScanWifiLockOut:Z

.field mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mSensorStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field mStartedTcpBytesReceived:J

.field mStartedTcpBytesSent:J

.field mTcpBytesReceivedAtLastUnplug:J

.field mTcpBytesSentAtLastUnplug:J

.field final mUid:I

.field mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mVideoTurnedOn:Z

.field mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 8
    .parameter
    .parameter "uid"

    .prologue
    const-wide/16 v0, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x7

    const-wide/16 v4, 0x0

    .line 2415
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 2367
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    .line 2368
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    .line 2393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    .line 2398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    .line 2403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    .line 2408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    .line 2413
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 2416
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    .line 2417
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2419
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2421
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2423
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v6, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2425
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v6, v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2427
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v7, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2430
    iget-boolean v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v0, :cond_1

    .line 2438
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesReceived()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    .line 2439
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    .line 2441
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesSent()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    .line 2442
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    .line 2445
    :cond_1
    return-void
.end method


# virtual methods
.method public computeCurrentTcpBytesReceived()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 2488
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #calls: Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDetailGroupedByUid()Landroid/net/NetworkStats;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/net/NetworkStats;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v4, v5, v6}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 2490
    .local v0, uidRxBytes:J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    cmp-long v6, v6, v2

    if-ltz v6, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    sub-long v2, v0, v2

    :cond_0
    add-long/2addr v2, v4

    return-wide v2
.end method

.method public computeCurrentTcpBytesSent()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 2709
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #calls: Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDetailGroupedByUid()Landroid/net/NetworkStats;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/net/NetworkStats;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v4, v5, v6}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 2711
    .local v0, uidTxBytes:J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    cmp-long v6, v6, v2

    if-ltz v6, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    sub-long v2, v0, v2

    :cond_0
    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getAudioTurnedOnTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2665
    const-wide/16 v0, 0x0

    .line 2667
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 4076
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2640
    const-wide/16 v0, 0x0

    .line 2642
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPackageStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .parameter "name"

    .prologue
    .line 3913
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 3914
    .local v0, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    .line 3915
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .end local v0           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 3916
    .restart local v0       #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3919
    :cond_0
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .parameter "pid"

    .prologue
    .line 3900
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 3901
    .local v0, p:Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    .line 3902
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    .end local v0           #p:Landroid/os/BatteryStats$Uid$Pid;
    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    .line 3903
    .restart local v0       #p:Landroid/os/BatteryStats$Uid$Pid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3905
    :cond_0
    return-object v0
.end method

.method public getProcessStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .parameter "name"

    .prologue
    .line 3886
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 3887
    .local v0, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    .line 3888
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .end local v0           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 3889
    .restart local v0       #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3892
    :cond_0
    return-object v0
.end method

.method public getScanWifiLockTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2648
    const-wide/16 v0, 0x0

    .line 2650
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSensorStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 5
    .parameter "sensor"
    .parameter "create"

    .prologue
    .line 3983
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 3984
    .local v0, se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v0, :cond_2

    .line 3985
    if-nez p2, :cond_1

    .line 3986
    const/4 v1, 0x0

    .line 4002
    :cond_0
    :goto_0
    return-object v1

    .line 3988
    :cond_1
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .end local v0           #se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 3989
    .restart local v0       #se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3991
    :cond_2
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3992
    .local v1, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v1, :cond_0

    .line 3995
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3996
    .local v2, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v2, :cond_3

    .line 3997
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3998
    .restart local v2       #timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4000
    :cond_3
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4001
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_0
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .parameter "pkg"
    .parameter "serv"

    .prologue
    .line 3927
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    .line 3928
    .local v0, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 3929
    .local v1, ss:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    .line 3930
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    .line 3931
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3934
    :cond_0
    return-object v1
.end method

.method public getTcpBytesReceived(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 2474
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2475
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 2483
    :cond_0
    :goto_0
    return-wide v0

    .line 2477
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesReceived()J

    move-result-wide v0

    .line 2478
    .local v0, current:J
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 2479
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 2480
    :cond_2
    if-nez p1, :cond_0

    .line 2481
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTcpBytesSent(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 2496
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2497
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    .line 2505
    :cond_0
    :goto_0
    return-wide v0

    .line 2499
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesSent()J

    move-result-wide v0

    .line 2500
    .local v0, current:J
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 2501
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 2502
    :cond_2
    if-nez p1, :cond_0

    .line 2503
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 2469
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .parameter "type"
    .parameter "which"

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 2696
    const/4 v0, 0x0

    .line 2698
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_0
.end method

.method public getVideoTurnedOnTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2673
    const-wide/16 v0, 0x0

    .line 2675
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7
    .parameter "name"
    .parameter "type"

    .prologue
    .line 3938
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 3939
    .local v3, wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-nez v3, :cond_2

    .line 3940
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 3941
    .local v0, N:I
    const/16 v4, 0x1e

    if-le v0, v4, :cond_1

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    const/16 v4, 0x32

    if-le v0, v4, :cond_1

    .line 3943
    :cond_0
    const-string p1, "*overflow*"

    .line 3944
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 3946
    .restart local v3       #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_1
    if-nez v3, :cond_2

    .line 3947
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .end local v3           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-direct {v3, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 3948
    .restart local v3       #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3951
    .end local v0           #N:I
    :cond_2
    const/4 v1, 0x0

    .line 3952
    .local v1, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    packed-switch p2, :pswitch_data_0

    .line 3978
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3954
    :pswitch_0
    iget-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3955
    if-nez v1, :cond_3

    .line 3956
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3958
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_3
    move-object v2, v1

    .line 3976
    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .local v2, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :goto_0
    return-object v2

    .line 3962
    .end local v2           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :pswitch_1
    iget-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3963
    if-nez v1, :cond_4

    .line 3964
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3966
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_4
    move-object v2, v1

    .line 3968
    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v2       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    goto :goto_0

    .line 3970
    .end local v2           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :pswitch_2
    iget-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3971
    if-nez v1, :cond_5

    .line 3972
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3974
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_5
    move-object v2, v1

    .line 3976
    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v2       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    goto :goto_0

    .line 3952
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getWakelockStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2656
    const-wide/16 v0, 0x0

    .line 2658
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWifiRunningTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2632
    const-wide/16 v0, 0x0

    .line 2634
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public hasUserActivity()Z
    .locals 1

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initUserActivityLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 2702
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 2703
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 2704
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 2703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2706
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOffLocked()V
    .locals 2

    .prologue
    .line 2603
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    if-eqz v0, :cond_0

    .line 2604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 2605
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2607
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked()V
    .locals 4

    .prologue
    .line 2591
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    if-nez v0, :cond_1

    .line 2592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 2593
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2594
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2599
    :cond_1
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked()V
    .locals 4

    .prologue
    .line 2531
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_1

    .line 2532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 2533
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2534
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2537
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2539
    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked()V
    .locals 2

    .prologue
    .line 2543
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 2544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 2545
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2547
    :cond_0
    return-void
.end method

.method public noteScanWifiLockAcquiredLocked()V
    .locals 4

    .prologue
    .line 2551
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    if-nez v0, :cond_1

    .line 2552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 2553
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2554
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2557
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2559
    :cond_1
    return-void
.end method

.method public noteScanWifiLockReleasedLocked()V
    .locals 2

    .prologue
    .line 2563
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 2564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 2565
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2567
    :cond_0
    return-void
.end method

.method public noteStartGps()V
    .locals 3

    .prologue
    .line 4062
    const/16 v1, -0x2710

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 4063
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 4064
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 4066
    :cond_0
    return-void
.end method

.method public noteStartSensor(I)V
    .locals 2
    .parameter "sensor"

    .prologue
    .line 4047
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 4048
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 4049
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 4051
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;I)V
    .locals 6
    .parameter "pid"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 4006
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    .line 4007
    .local v1, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v1, :cond_0

    .line 4008
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 4010
    :cond_0
    if-ltz p1, :cond_1

    if-nez p3, :cond_1

    .line 4011
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v0

    .line 4012
    .local v0, p:Landroid/os/BatteryStats$Uid$Pid;
    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 4013
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    .line 4016
    .end local v0           #p:Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteStopGps()V
    .locals 3

    .prologue
    .line 4069
    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 4070
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 4071
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 4073
    :cond_0
    return-void
.end method

.method public noteStopSensor(I)V
    .locals 2
    .parameter "sensor"

    .prologue
    .line 4055
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 4056
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 4057
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 4059
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;I)V
    .locals 10
    .parameter "pid"
    .parameter "name"
    .parameter "type"

    .prologue
    const-wide/16 v8, 0x0

    .line 4019
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    .line 4020
    .local v1, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v1, :cond_0

    .line 4021
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 4023
    :cond_0
    if-ltz p1, :cond_1

    if-nez p3, :cond_1

    .line 4024
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 4025
    .local v0, p:Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_1

    .line 4026
    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSum:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSum:J

    .line 4027
    iput-wide v8, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    .line 4030
    .end local v0           #p:Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 2681
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 2683
    :cond_0
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 2685
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    .line 2686
    return-void

    .line 2684
    :cond_2
    const/4 v0, 0x7

    if-lt p1, v0, :cond_1

    const/4 p1, 0x6

    goto :goto_0
.end method

.method public noteVideoTurnedOffLocked()V
    .locals 2

    .prologue
    .line 2623
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    if-eqz v0, :cond_0

    .line 2624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 2625
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2627
    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked()V
    .locals 4

    .prologue
    .line 2611
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    if-nez v0, :cond_1

    .line 2612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 2613
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2614
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2617
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2619
    :cond_1
    return-void
.end method

.method public noteWifiMulticastDisabledLocked()V
    .locals 2

    .prologue
    .line 2583
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-eqz v0, :cond_0

    .line 2584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 2585
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2587
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked()V
    .locals 4

    .prologue
    .line 2571
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-nez v0, :cond_1

    .line 2572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 2573
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2574
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2577
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2579
    :cond_1
    return-void
.end method

.method public noteWifiRunningLocked()V
    .locals 4

    .prologue
    .line 2511
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_1

    .line 2512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 2513
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 2514
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2517
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2519
    :cond_1
    return-void
.end method

.method public noteWifiStoppedLocked()V
    .locals 2

    .prologue
    .line 2523
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_0

    .line 2524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 2525
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2527
    :cond_0
    return-void
.end method

.method readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 25
    .parameter
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2927
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2928
    .local v16, numWakelocks:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2929
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_0

    .line 2930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 2931
    .local v24, wakelockName:Ljava/lang/String;
    new-instance v23, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 2932
    .local v23, wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 2936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2929
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2939
    .end local v23           #wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v24           #wakelockName:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2940
    .local v15, numSensors:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2941
    const/4 v11, 0x0

    .local v11, k:I
    :goto_1
    if-ge v11, v15, :cond_1

    .line 2942
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 2943
    .local v22, sensorNumber:I
    new-instance v21, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 2944
    .local v21, sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 2945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2941
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2948
    .end local v21           #sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v22           #sensorNumber:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2949
    .local v14, numProcs:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2950
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_2

    .line 2951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2952
    .local v20, processName:Ljava/lang/String;
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 2953
    .local v19, proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 2954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2950
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2957
    .end local v19           #proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v20           #processName:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2958
    .local v13, numPkgs:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2959
    const/4 v12, 0x0

    .local v12, l:I
    :goto_3
    if-ge v12, v13, :cond_3

    .line 2960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2961
    .local v17, packageName:Ljava/lang/String;
    new-instance v18, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 2962
    .local v18, pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 2963
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2959
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2966
    .end local v17           #packageName:Ljava/lang/String;
    .end local v18           #pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 2967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    .line 2968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    .line 2969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    .line 2970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    .line 2971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    .line 2972
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 2973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2974
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2979
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 2980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 2981
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2986
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 2987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 2988
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2993
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 2994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 2995
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3000
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 3001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 3002
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3007
    :goto_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 3008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 3009
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3014
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 3015
    const/4 v3, 0x7

    new-array v3, v3, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 3016
    const/4 v9, 0x0

    .local v9, i:I
    :goto_a
    const/4 v3, 0x7

    if-ge v9, v3, :cond_b

    .line 3017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v4, v3, v9

    .line 3016
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 2977
    .end local v9           #i:I
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_4

    .line 2984
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_5

    .line 2991
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_6

    .line 2998
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_7

    .line 3005
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_8

    .line 3012
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_9

    .line 3020
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 3022
    :cond_b
    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .locals 1
    .parameter "proc"
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 4040
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 4041
    .local v0, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 4042
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    .line 4044
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(Ljava/lang/String;JJ)V
    .locals 1
    .parameter "proc"
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 4033
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 4034
    .local v0, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 4035
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveWake(JJ)V

    .line 4037
    :cond_0
    return-void
.end method

.method reset()Z
    .locals 23

    .prologue
    .line 2720
    const/4 v3, 0x0

    .line 2722
    .local v3, active:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 2723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_6

    const/16 v19, 0x1

    :goto_0
    or-int v3, v3, v19

    .line 2724
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 2726
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_7

    const/16 v19, 0x1

    :goto_1
    or-int v3, v3, v19

    .line 2728
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 2730
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 2731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_8

    const/16 v19, 0x1

    :goto_2
    or-int v3, v3, v19

    .line 2732
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 2734
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_9

    const/16 v19, 0x1

    :goto_3
    or-int v3, v3, v19

    .line 2736
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 2738
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 2739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_a

    const/16 v19, 0x1

    :goto_4
    or-int v3, v3, v19

    .line 2740
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 2742
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 2743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_b

    const/16 v19, 0x1

    :goto_5
    or-int v3, v3, v19

    .line 2744
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 2747
    :cond_5
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 2748
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    .line 2750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 2751
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ge v4, v0, :cond_c

    .line 2752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 2751
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2723
    .end local v4           #i:I
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2727
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2731
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2735
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 2739
    :cond_a
    const/16 v19, 0x0

    goto :goto_4

    .line 2743
    :cond_b
    const/16 v19, 0x0

    goto :goto_5

    .line 2756
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_e

    .line 2757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2758
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;>;"
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2759
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 2760
    .local v17, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 2761
    .local v18, wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2762
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 2764
    :cond_d
    const/4 v3, 0x1

    goto :goto_7

    .line 2768
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;>;"
    .end local v17           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v18           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_10

    .line 2769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2770
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;>;"
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 2771
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 2772
    .local v15, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 2773
    .local v14, s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 2774
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 2776
    :cond_f
    const/4 v3, 0x1

    goto :goto_8

    .line 2780
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;>;"
    .end local v14           #s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v15           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_12

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2782
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;>;"
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 2783
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 2784
    .local v13, procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    goto :goto_9

    .line 2786
    .end local v13           #procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 2788
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    if-lez v19, :cond_14

    .line 2789
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_a
    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_14

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Pid;

    .line 2791
    .local v11, pid:Landroid/os/BatteryStats$Uid$Pid;
    iget-wide v0, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_13

    .line 2792
    const/4 v3, 0x1

    .line 2789
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 2796
    .end local v4           #i:I
    .end local v11           #pid:Landroid/os/BatteryStats$Uid$Pid;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_17

    .line 2797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2798
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 2799
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2800
    .local v12, pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 2801
    .local v10, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 2802
    iget-object v0, v10, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_15

    .line 2803
    iget-object v0, v10, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2805
    .local v9, it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 2806
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 2807
    .local v16, servEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    goto :goto_b

    .line 2811
    .end local v9           #it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v10           #p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v12           #pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v16           #servEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 2814
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    .line 2816
    if-nez v3, :cond_1e

    .line 2817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 2820
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 2823
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 2826
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 2827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 2829
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 2832
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1d

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 2835
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e

    .line 2836
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_c
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ge v4, v0, :cond_1e

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 2836
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2842
    .end local v4           #i:I
    :cond_1e
    if-nez v3, :cond_1f

    const/16 v19, 0x1

    :goto_d
    return v19

    :cond_1f
    const/16 v19, 0x0

    goto :goto_d
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 12
    .parameter "out"
    .parameter "batteryRealtime"

    .prologue
    .line 2846
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2847
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2848
    .local v9, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2849
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 2850
    .local v8, wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v8, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_0

    .line 2853
    .end local v8           #wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v9           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    :cond_0
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2854
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2855
    .local v7, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2856
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 2857
    .local v6, sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_1

    .line 2860
    .end local v6           #sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v7           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    :cond_1
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2861
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2862
    .local v5, procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2863
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 2864
    .local v4, proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_2

    .line 2867
    .end local v4           #proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v5           #procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    :cond_2
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2868
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2869
    .local v3, pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2870
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 2871
    .local v2, pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_3

    .line 2874
    .end local v2           #pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v3           #pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    :cond_3
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2875
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2876
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesReceived()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2877
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesSent()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2878
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2879
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2880
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_4

    .line 2881
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2882
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2886
    :goto_4
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_5

    .line 2887
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2888
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2892
    :goto_5
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_6

    .line 2893
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2894
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2898
    :goto_6
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_7

    .line 2899
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2900
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2904
    :goto_7
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_8

    .line 2905
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2906
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2910
    :goto_8
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_9

    .line 2911
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2912
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2916
    :goto_9
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v10, :cond_a

    .line 2917
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2918
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    const/4 v10, 0x7

    if-ge v0, v10, :cond_b

    .line 2919
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v10, v10, v0

    invoke-virtual {v10, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 2918
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2884
    .end local v0           #i:I
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 2890
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 2896
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 2902
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 2908
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 2914
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 2922
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2924
    :cond_b
    return-void
.end method
