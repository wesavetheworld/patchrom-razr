.class Lcom/android/server/AppWidgetService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .locals 0
    .parameter

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1516
    .local v2, action:Ljava/lang/String;
    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1517
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->sendInitialBroadcasts()V

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    const-string v15, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1519
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    .line 1520
    .local v13, revised:Ljava/util/Locale;
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    invoke-virtual {v13, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1522
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iput-object v13, v15, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    .line 1524
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v0, v15, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1525
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1527
    .local v1, N:I
    add-int/lit8 v7, v1, -0x1

    .local v7, i:I
    :goto_1
    if-ltz v7, :cond_3

    .line 1528
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppWidgetService$Provider;

    .line 1529
    .local v10, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v15, v10, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v15, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1530
    .local v12, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1527
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1532
    .end local v10           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1533
    monitor-exit v16

    goto :goto_0

    .end local v1           #N:I
    .end local v7           #i:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 1536
    .end local v13           #revised:Ljava/util/Locale;
    :cond_4
    const/4 v3, 0x0

    .line 1537
    .local v3, added:Z
    const/4 v5, 0x0

    .line 1538
    .local v5, changed:Z
    const/4 v11, 0x0

    .line 1539
    .local v11, pkgList:[Ljava/lang/String;
    const-string v15, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1540
    const-string v15, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1541
    const/4 v3, 0x1

    .line 1558
    :goto_2
    if-eqz v11, :cond_0

    array-length v15, v11

    if-eqz v15, :cond_0

    .line 1561
    if-nez v3, :cond_5

    if-eqz v5, :cond_b

    .line 1562
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v0, v15, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1563
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1565
    .local v6, extras:Landroid/os/Bundle;
    if-nez v5, :cond_6

    if-eqz v6, :cond_9

    const-string v15, "android.intent.extra.REPLACING"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1567
    :cond_6
    move-object v4, v11

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v9, :cond_a

    aget-object v12, v4, v8

    .line 1569
    .restart local v12       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1567
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1542
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_7
    const-string v15, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1543
    const-string v15, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1544
    const/4 v3, 0x0

    goto :goto_2

    .line 1546
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 1547
    .local v14, uri:Landroid/net/Uri;
    if-eqz v14, :cond_0

    .line 1550
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 1551
    .restart local v12       #pkgName:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 1554
    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/String;

    .end local v11           #pkgList:[Ljava/lang/String;
    const/4 v15, 0x0

    aput-object v12, v11, v15

    .line 1555
    .restart local v11       #pkgList:[Ljava/lang/String;
    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1556
    const-string v15, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 1573
    .end local v12           #pkgName:Ljava/lang/String;
    .end local v14           #uri:Landroid/net/Uri;
    .restart local v6       #extras:Landroid/os/Bundle;
    :cond_9
    move-object v4, v11

    .restart local v4       #arr$:[Ljava/lang/String;
    :try_start_2
    array-length v9, v4

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_4
    if-ge v8, v9, :cond_a

    aget-object v12, v4, v8

    .line 1574
    .restart local v12       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->addProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1573
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1577
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1578
    monitor-exit v16

    goto/16 :goto_0

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v8           #i$:I
    .end local v9           #len$:I
    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v15

    .line 1580
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1581
    .restart local v6       #extras:Landroid/os/Bundle;
    if-eqz v6, :cond_c

    const-string v15, "android.intent.extra.REPLACING"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1584
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v0, v15, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1585
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    .line 1586
    move-object v4, v11

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v9, v4

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_5
    if-ge v8, v9, :cond_d

    aget-object v12, v4, v8

    .line 1587
    .restart local v12       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->removeProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1586
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1590
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_d
    monitor-exit v16

    goto/16 :goto_0

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    :catchall_2
    move-exception v15

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v15
.end method
