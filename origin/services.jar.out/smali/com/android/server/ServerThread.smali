.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field public static mcheckIfBatteryLow:Z

.field public static mcheckIfUpdateNeeded:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 303
    sput-boolean v0, Lcom/android/server/ServerThread;->mcheckIfUpdateNeeded:Z

    .line 304
    sput-boolean v0, Lcom/android/server/ServerThread;->mcheckIfBatteryLow:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1258
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.SystemUIService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1262
    const-string v2, "ro.bootmode"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "charger"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1263
    .local v1, isChargeMode:Z
    if-nez v1, :cond_0

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1265
    :cond_0
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 308
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    return-void
.end method

.method public run()V
    .locals 141

    .prologue
    .line 314
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 317
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 319
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 322
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 323
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 327
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v116

    .line 329
    .local v116, shutdownAction:Ljava/lang/String;
    if-eqz v116, :cond_0

    invoke-virtual/range {v116 .. v116}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 330
    const/4 v7, 0x0

    move-object/from16 v0, v116

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_11

    const/16 v110, 0x1

    .line 333
    .local v110, reboot:Z
    :goto_0
    invoke-virtual/range {v116 .. v116}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_12

    .line 334
    const/4 v7, 0x1

    invoke-virtual/range {v116 .. v116}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v116

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v109

    .line 339
    .local v109, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v110

    move-object/from16 v1, v109

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 343
    .end local v109           #reason:Ljava/lang/String;
    .end local v110           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 344
    .local v85, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v85

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v84, 0x0

    .line 346
    .local v84, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 348
    .local v33, headless:Z
    const/16 v90, 0x0

    .line 349
    .local v90, installer:Lcom/android/server/pm/Installer;
    const/16 v59, 0x0

    .line 350
    .local v59, accountManager:Lcom/android/server/accounts/AccountManagerService;
    const/16 v72, 0x0

    .line 351
    .local v72, contentService:Lcom/android/server/content/ContentService;
    const/16 v93, 0x0

    .line 352
    .local v93, lights:Lcom/android/server/LightsService;
    const/16 v108, 0x0

    .line 353
    .local v108, power:Lcom/android/server/power/PowerManagerService;
    const/16 v78, 0x0

    .line 354
    .local v78, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v64, 0x0

    .line 355
    .local v64, battery:Lcom/android/server/BatteryService;
    const/16 v130, 0x0

    .line 356
    .local v130, vibrator:Lcom/android/server/VibratorService;
    const/16 v61, 0x0

    .line 357
    .local v61, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v99, 0x0

    .line 358
    .local v99, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 359
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 360
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v101, 0x0

    .line 361
    .local v101, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v70, 0x0

    .line 362
    .local v70, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v137, 0x0

    .line 363
    .local v137, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v135, 0x0

    .line 364
    .local v135, wifi:Lcom/android/server/wifi/WifiService;
    const/16 v115, 0x0

    .line 365
    .local v115, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v107, 0x0

    .line 366
    .local v107, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 367
    .local v5, context:Landroid/content/Context;
    const/16 v139, 0x0

    .line 368
    .local v139, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v65, 0x0

    .line 369
    .local v65, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v79, 0x0

    .line 370
    .local v79, dock:Lcom/android/server/DockObserver;
    const/16 v128, 0x0

    .line 371
    .local v128, usb:Lcom/android/server/usb/UsbService;
    const/16 v113, 0x0

    .line 372
    .local v113, serial:Lcom/android/server/SerialService;
    const/16 v123, 0x0

    .line 373
    .local v123, twilight:Lcom/android/server/TwilightService;
    const/16 v126, 0x0

    .line 374
    .local v126, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v111, 0x0

    .line 375
    .local v111, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v103, 0x0

    .line 376
    .local v103, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v67, 0x0

    .line 377
    .local v67, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v89, 0x0

    .line 378
    .local v89, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v119, 0x0

    .line 380
    .local v119, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const-string v7, "ro.bootmode"

    const-string v9, "unknown"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "charger"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v92

    .line 381
    .local v92, isChargeMode:Z
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SystemServer isChargeMode = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v92

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v125, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v125

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 390
    .local v125, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v125 .. v125}, Landroid/os/HandlerThread;->start()V

    .line 391
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v125 .. v125}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 392
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    new-instance v140, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v140

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 410
    .local v140, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v140 .. v140}, Landroid/os/HandlerThread;->start()V

    .line 411
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v140 .. v140}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 412
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    const/16 v24, 0x0

    .line 434
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v91, Lcom/android/server/pm/Installer;

    invoke-direct/range {v91 .. v91}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4d

    .line 436
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .local v91, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/pm/Installer;->ping()Z

    .line 438
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4e

    .line 440
    .end local v108           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 442
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-static/range {v84 .. v84}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 445
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4f

    .line 447
    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 449
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v120, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_50

    .line 451
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v120, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v120

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 453
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 458
    sget-boolean v7, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v7, :cond_1

    .line 459
    const-string v7, "SystemServer"

    const-string v9, "Mobile Safe"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v7, "mobile_safe"

    new-instance v9, Landroid/safe/MobileSafeService;

    invoke-direct {v9, v5}, Landroid/safe/MobileSafeService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 464
    :cond_1
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 466
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 467
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 474
    .local v75, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v75

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 475
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v24, 0x1

    .line 482
    :cond_3
    :goto_3
    if-eqz v84, :cond_15

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v91

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v107

    .line 485
    const/16 v86, 0x0

    .line 487
    .local v86, firstBoot:Z
    :try_start_5
    invoke-interface/range {v107 .. v107}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_37
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v86

    .line 491
    :goto_5
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 493
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 496
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 500
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 504
    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v60, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v60

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 506
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .local v60, accountManager:Lcom/android/server/accounts/AccountManagerService;
    :try_start_8
    const-string v7, "account"

    move-object/from16 v0, v60

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_51

    move-object/from16 v59, v60

    .line 511
    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    :goto_6
    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v7, 0x1

    move/from16 v0, v84

    if-ne v0, v7, :cond_16

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v72

    .line 515
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 518
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 521
    .end local v93           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_52

    .line 523
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_b
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 525
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v131, Lcom/android/server/VibratorService;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_53

    .line 527
    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .local v131, vibrator:Lcom/android/server/VibratorService;
    :try_start_c
    const-string v7, "vibrator"

    move-object/from16 v0, v131

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 531
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 534
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_54

    .line 536
    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_d
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 538
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 542
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_55

    .line 545
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_e
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {}, Lcom/android/server/FirmwareUpdate;->checkIfUpdateNeeded()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 548
    invoke-virtual {v8}, Lcom/android/server/BatteryService;->isBatteryLow()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 549
    const/16 v86, 0x0

    .line 550
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/server/ServerThread;->mcheckIfBatteryLow:Z

    .line 551
    const-string v7, "FirmwareUpdate"

    const-string v9, "Battery Low firmware not need to update"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_4
    :goto_8
    const/4 v7, 0x1

    move/from16 v0, v84

    if-eq v0, v7, :cond_18

    const/16 v22, 0x1

    :goto_9
    if-nez v86, :cond_19

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v139

    .line 563
    const-string v7, "window"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 564
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 566
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v139

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 568
    invoke-virtual/range {v139 .. v139}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 569
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 571
    move-object/from16 v0, v139

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 572
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 577
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 578
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    :goto_b
    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v130, v131

    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .line 595
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    :goto_c
    const/16 v76, 0x0

    .line 596
    .local v76, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v117, 0x0

    .line 597
    .local v117, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v87, 0x0

    .line 598
    .local v87, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v62, 0x0

    .line 599
    .local v62, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v105, 0x0

    .line 600
    .local v105, notification:Lcom/android/server/NotificationManagerService;
    const/16 v133, 0x0

    .line 601
    .local v133, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v94, 0x0

    .line 602
    .local v94, location:Lcom/android/server/LocationManagerService;
    const/16 v73, 0x0

    .line 603
    .local v73, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v121, 0x0

    .line 604
    .local v121, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v96, 0x0

    .line 605
    .local v96, lockSettings:Lcom/android/server/LockSettingsService;
    const/16 v81, 0x0

    .line 608
    .local v81, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/4 v7, 0x1

    move/from16 v0, v84

    if-eq v0, v7, :cond_5

    .line 610
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v88, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v88

    move-object/from16 v1, v139

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 612
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .local v88, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_10
    const-string v7, "input_method"

    move-object/from16 v0, v88

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4c

    move-object/from16 v87, v88

    .line 618
    .end local v88           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    .line 627
    :cond_5
    :goto_e
    :try_start_12
    invoke-virtual/range {v139 .. v139}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5

    .line 632
    :goto_f
    invoke-static {v5}, Lcom/android/server/FirmwareUpdate;->updateIfNeeded(Landroid/content/Context;)V

    .line 636
    :try_start_13
    invoke-interface/range {v107 .. v107}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6

    .line 642
    :goto_10
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x1040415

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4b

    .line 649
    :goto_11
    const/4 v7, 0x1

    move/from16 v0, v84

    if-eq v0, v7, :cond_1e

    .line 650
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 656
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v100, Lcom/android/server/MountService;

    move-object/from16 v0, v100

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7

    .line 658
    .end local v99           #mountService:Lcom/android/server/MountService;
    .local v100, mountService:Lcom/android/server/MountService;
    :try_start_16
    const-string v7, "mount"

    move-object/from16 v0, v100

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4a

    move-object/from16 v99, v100

    .line 665
    .end local v100           #mountService:Lcom/android/server/MountService;
    .restart local v99       #mountService:Lcom/android/server/MountService;
    :cond_6
    :goto_12
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v97, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v97

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8

    .line 667
    .end local v96           #lockSettings:Lcom/android/server/LockSettingsService;
    .local v97, lockSettings:Lcom/android/server/LockSettingsService;
    :try_start_18
    const-string v7, "lock_settings"

    move-object/from16 v0, v97

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_49

    move-object/from16 v96, v97

    .line 673
    .end local v97           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v96       #lockSettings:Lcom/android/server/LockSettingsService;
    :goto_13
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v77, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9

    .line 675
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v77, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1a
    const-string v7, "device_policy"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_48

    move-object/from16 v76, v77

    .line 681
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_14
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v118, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v118

    move-object/from16 v1, v139

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_a

    .line 683
    .end local v117           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v118, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1c
    const-string v7, "statusbar"

    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_47

    move-object/from16 v117, v118

    .line 689
    .end local v118           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_15
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_b

    .line 697
    :goto_16
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 699
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_c

    .line 705
    :goto_17
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v122, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_d

    .line 707
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v122, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_20
    const-string v7, "textservices"

    move-object/from16 v0, v122

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_46

    move-object/from16 v121, v122

    .line 713
    .end local v122           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_18
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v102, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v102

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_e

    .line 715
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v102, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_22
    const-string v7, "netstats"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_45

    move-object/from16 v29, v102

    .line 721
    .end local v102           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_f

    .line 725
    .end local v101           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_24
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_44

    .line 731
    :goto_1a
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v138, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v138

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_10

    .line 733
    .end local v137           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v138, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_26
    const-string v7, "wifip2p"

    move-object/from16 v0, v138

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_43

    move-object/from16 v137, v138

    .line 739
    .end local v138           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v137       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v136, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v136

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_11

    .line 741
    .end local v135           #wifi:Lcom/android/server/wifi/WifiService;
    .local v136, wifi:Lcom/android/server/wifi/WifiService;
    :try_start_28
    const-string v7, "wifi"

    move-object/from16 v0, v136

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_42

    move-object/from16 v135, v136

    .line 747
    .end local v136           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v135       #wifi:Lcom/android/server/wifi/WifiService;
    :goto_1c
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v71, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v71

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_12

    .line 750
    .end local v70           #connectivity:Lcom/android/server/ConnectivityService;
    .local v71, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2a
    const-string v7, "connectivity"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 751
    move-object/from16 v0, v29

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 752
    move-object/from16 v0, v25

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 753
    invoke-virtual/range {v135 .. v135}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    .line 754
    invoke-virtual/range {v137 .. v137}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_41

    move-object/from16 v70, v71

    .line 760
    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v70       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1d
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v115

    .line 762
    const-string v7, "servicediscovery"

    move-object/from16 v0, v115

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_13

    .line 769
    :goto_1e
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_14

    .line 781
    :goto_1f
    if-eqz v99, :cond_7

    .line 782
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 786
    :cond_7
    if-eqz v59, :cond_8

    .line 787
    :try_start_2d
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_15

    .line 793
    :cond_8
    :goto_20
    if-eqz v72, :cond_9

    .line 794
    :try_start_2e
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_16

    .line 800
    :cond_9
    :goto_21
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v106, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v106

    move-object/from16 v1, v117

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_17

    .line 802
    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .local v106, notification:Lcom/android/server/NotificationManagerService;
    :try_start_30
    const-string v7, "notification"

    move-object/from16 v0, v106

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 803
    move-object/from16 v0, v25

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_40

    move-object/from16 v105, v106

    .line 809
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v105       #notification:Lcom/android/server/NotificationManagerService;
    :goto_22
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 817
    :goto_23
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v95, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v95

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 819
    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .local v95, location:Lcom/android/server/LocationManagerService;
    :try_start_33
    const-string v7, "location"

    move-object/from16 v0, v95

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_3f

    move-object/from16 v94, v95

    .line 825
    .end local v95           #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #location:Lcom/android/server/LocationManagerService;
    :goto_24
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v74, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 827
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v74, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_35
    const-string v7, "country_detector"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_3e

    move-object/from16 v73, v74

    .line 833
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_25
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1b

    .line 841
    :goto_26
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1c

    .line 849
    :goto_27
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez v92, :cond_a

    .line 853
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    if-nez v33, :cond_a

    .line 855
    new-instance v134, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v134

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1d

    .line 856
    .end local v133           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v134, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_39
    const-string v7, "wallpaper"

    move-object/from16 v0, v134

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_3d

    move-object/from16 v133, v134

    .line 863
    .end local v134           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v133       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_a
    :goto_28
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 865
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1e

    .line 873
    :cond_b
    :goto_29
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v80, Lcom/android/server/DockObserver;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f

    .end local v79           #dock:Lcom/android/server/DockObserver;
    .local v80, dock:Lcom/android/server/DockObserver;
    move-object/from16 v79, v80

    .line 881
    .end local v80           #dock:Lcom/android/server/DockObserver;
    .restart local v79       #dock:Lcom/android/server/DockObserver;
    :goto_2a
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_20

    .line 890
    :goto_2b
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v129, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_21

    .line 893
    .end local v128           #usb:Lcom/android/server/usb/UsbService;
    .local v129, usb:Lcom/android/server/usb/UsbService;
    :try_start_3e
    const-string v7, "usb"

    move-object/from16 v0, v129

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_3c

    move-object/from16 v128, v129

    .line 899
    .end local v129           #usb:Lcom/android/server/usb/UsbService;
    .restart local v128       #usb:Lcom/android/server/usb/UsbService;
    :goto_2c
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v114, Lcom/android/server/SerialService;

    move-object/from16 v0, v114

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 902
    .end local v113           #serial:Lcom/android/server/SerialService;
    .local v114, serial:Lcom/android/server/SerialService;
    :try_start_40
    const-string v7, "serial"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_3b

    move-object/from16 v113, v114

    .line 908
    .end local v114           #serial:Lcom/android/server/SerialService;
    .restart local v113       #serial:Lcom/android/server/SerialService;
    :goto_2d
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance v124, Lcom/android/server/TwilightService;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .end local v123           #twilight:Lcom/android/server/TwilightService;
    .local v124, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v123, v124

    .line 915
    .end local v124           #twilight:Lcom/android/server/TwilightService;
    .restart local v123       #twilight:Lcom/android/server/TwilightService;
    :goto_2e
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v127, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v127

    move-object/from16 v1, v123

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .end local v126           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v127, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v126, v127

    .line 923
    .end local v127           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v126       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2f
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_25

    .line 931
    :goto_30
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v63, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v63

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .line 933
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .local v63, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_45
    const-string v7, "appwidget"

    move-object/from16 v0, v63

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_3a

    move-object/from16 v62, v63

    .line 939
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_31
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance v112, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v112

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .end local v111           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v112, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v111, v112

    .line 946
    .end local v112           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v111       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_32
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_28

    .line 957
    :goto_33
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_29

    .line 965
    :goto_34
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    new-instance v104, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2a

    .end local v103           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v104, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v103, v104

    .line 972
    .end local v104           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v103       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_35
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v68, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2b

    .line 974
    .end local v67           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v68, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_4b
    const-string v7, "commontime_management"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_39

    move-object/from16 v67, v68

    .line 980
    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v67       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_36
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .line 986
    :goto_37
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110042

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 989
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v82, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v82

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 992
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v82, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_4e
    const-string v7, "dreams"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_38

    move-object/from16 v81, v82

    .line 999
    .end local v82           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_c
    :goto_38
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2e

    .line 1008
    :goto_39
    invoke-virtual/range {v139 .. v139}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1009
    .local v47, safeMode:Z
    if-eqz v47, :cond_1d

    .line 1010
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1012
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1014
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1023
    :goto_3a
    :try_start_50
    invoke-virtual/range {v130 .. v130}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2f

    .line 1029
    :goto_3b
    :try_start_51
    invoke-virtual/range {v96 .. v96}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_30

    .line 1034
    :goto_3c
    if-eqz v76, :cond_d

    .line 1036
    :try_start_52
    invoke-virtual/range {v76 .. v76}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .line 1042
    :cond_d
    :goto_3d
    if-eqz v105, :cond_e

    .line 1044
    :try_start_53
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_32

    .line 1051
    :cond_e
    :goto_3e
    :try_start_54
    invoke-virtual/range {v139 .. v139}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_33

    .line 1056
    :goto_3f
    if-eqz v47, :cond_f

    .line 1057
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1063
    :cond_f
    invoke-virtual/range {v139 .. v139}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v69

    .line 1064
    .local v69, config:Landroid/content/res/Configuration;
    new-instance v98, Landroid/util/DisplayMetrics;

    invoke-direct/range {v98 .. v98}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1065
    .local v98, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Landroid/view/WindowManager;

    .line 1066
    .local v132, w:Landroid/view/WindowManager;
    invoke-interface/range {v132 .. v132}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v98

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1067
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v69

    move-object/from16 v1, v98

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1070
    :try_start_55
    move-object/from16 v0, v123

    move-object/from16 v1, v81

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .line 1076
    :goto_40
    :try_start_56
    invoke-interface/range {v107 .. v107}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    .line 1082
    :goto_41
    :try_start_57
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_36

    .line 1088
    :goto_42
    move-object/from16 v34, v5

    .line 1089
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v99

    .line 1090
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1091
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1092
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1093
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1094
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v70

    .line 1095
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v79

    .line 1096
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v128

    .line 1097
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v123

    .line 1098
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v126

    .line 1099
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v62

    .line 1100
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v133

    .line 1101
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v87

    .line 1102
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v111

    .line 1103
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v94

    .line 1104
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v73

    .line 1105
    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v103

    .line 1106
    .local v53, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v67

    .line 1107
    .local v54, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v121

    .line 1108
    .local v55, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v117

    .line 1109
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v81

    .line 1110
    .local v56, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v19

    .line 1111
    .local v57, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v58, v119

    .line 1118
    .local v58, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v58}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1248
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1249
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_10
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1253
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    return-void

    .line 330
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v54           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v55           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v56           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v57           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v58           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v65           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v67           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v69           #config:Landroid/content/res/Configuration;
    .end local v70           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v72           #contentService:Lcom/android/server/content/ContentService;
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v79           #dock:Lcom/android/server/DockObserver;
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v84           #factoryTest:I
    .end local v85           #factoryTestStr:Ljava/lang/String;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v92           #isChargeMode:Z
    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .end local v96           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v98           #metrics:Landroid/util/DisplayMetrics;
    .end local v99           #mountService:Lcom/android/server/MountService;
    .end local v103           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .end local v107           #pm:Landroid/content/pm/IPackageManager;
    .end local v111           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v113           #serial:Lcom/android/server/SerialService;
    .end local v115           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v117           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v123           #twilight:Lcom/android/server/TwilightService;
    .end local v125           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v126           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v128           #usb:Lcom/android/server/usb/UsbService;
    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .end local v132           #w:Landroid/view/WindowManager;
    .end local v133           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v135           #wifi:Lcom/android/server/wifi/WifiService;
    .end local v137           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v139           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v140           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_11
    const/16 v110, 0x0

    goto/16 :goto_0

    .line 336
    .restart local v110       #reboot:Z
    :cond_12
    const/16 v109, 0x0

    .restart local v109       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 344
    .end local v109           #reason:Ljava/lang/String;
    .end local v110           #reboot:Z
    .restart local v85       #factoryTestStr:Ljava/lang/String;
    :cond_13
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v84

    goto/16 :goto_2

    .line 477
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v65       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v67       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v70       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v72       #contentService:Lcom/android/server/content/ContentService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v79       #dock:Lcom/android/server/DockObserver;
    .restart local v84       #factoryTest:I
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #isChargeMode:Z
    .restart local v93       #lights:Lcom/android/server/LightsService;
    .restart local v99       #mountService:Lcom/android/server/MountService;
    .restart local v101       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v103       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v107       #pm:Landroid/content/pm/IPackageManager;
    .restart local v111       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v113       #serial:Lcom/android/server/SerialService;
    .restart local v115       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v123       #twilight:Lcom/android/server/TwilightService;
    .restart local v125       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v126       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v128       #usb:Lcom/android/server/usb/UsbService;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    .restart local v135       #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v137       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v139       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v140       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_14
    :try_start_58
    const-string v7, "1"

    move-object/from16 v0, v75

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 478
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 482
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 507
    .restart local v86       #firstBoot:Z
    :catch_0
    move-exception v83

    .line 508
    .local v83, e:Ljava/lang/Throwable;
    :goto_43
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_58} :catch_1

    goto/16 :goto_6

    .line 590
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v83           #e:Ljava/lang/Throwable;
    .end local v86           #firstBoot:Z
    :catch_1
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v93

    .end local v93           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .line 591
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .local v83, e:Ljava/lang/RuntimeException;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    :goto_44
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 512
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v83           #e:Ljava/lang/RuntimeException;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v86       #firstBoot:Z
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 553
    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    :cond_17
    const/16 v86, 0x0

    .line 554
    :try_start_59
    const-string v7, "FirmwareUpdate"

    const-string v9, "firmware need to update"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/server/ServerThread;->mcheckIfUpdateNeeded:Z

    goto/16 :goto_8

    .line 590
    :catch_2
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v130, v131

    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto :goto_44

    .line 559
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_19
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 579
    :cond_1a
    const/4 v7, 0x1

    move/from16 v0, v84

    if-ne v0, v7, :cond_1b

    .line 580
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 581
    :cond_1b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 583
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 585
    :cond_1c
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v66, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_59} :catch_2

    .line 587
    .end local v65           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v66, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_5a
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_5a} :catch_56

    move-object/from16 v65, v66

    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v65       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_b

    .line 613
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #location:Lcom/android/server/LocationManagerService;
    .restart local v96       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v105       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v117       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v83

    .line 614
    .local v83, e:Ljava/lang/Throwable;
    :goto_45
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 621
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v83

    .line 622
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 628
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v83

    .line 629
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 637
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v83

    .line 638
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 659
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v83

    .line 660
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 668
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v83

    .line 669
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 676
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v83

    .line 677
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 684
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v83

    .line 685
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 692
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v83

    .line 693
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 700
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v83

    .line 701
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 708
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v83

    .line 709
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 716
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v83

    .line 717
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 726
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v83

    move-object/from16 v25, v101

    .line 727
    .end local v101           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 734
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v83

    .line 735
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 742
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v83

    .line 743
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 755
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v83

    .line 756
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 764
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v83

    .line 765
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 772
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v83

    .line 773
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 788
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v83

    .line 789
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 795
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v83

    .line 796
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 804
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v83

    .line 805
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 812
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v83

    .line 813
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 820
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v83

    .line 821
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 828
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v83

    .line 829
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 836
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v83

    .line 837
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 844
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v83

    .line 845
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 858
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v83

    .line 859
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 867
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v83

    .line 868
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 876
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v83

    .line 877
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 885
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v83

    .line 886
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 894
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v83

    .line 895
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 903
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v83

    .line 904
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 910
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v83

    .line 911
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 918
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v83

    .line 919
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 926
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v83

    .line 927
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 934
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v83

    .line 935
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 941
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v83

    .line 942
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 948
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v83

    .line 949
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 960
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v83

    .line 961
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 967
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v83

    .line 968
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 975
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v83

    .line 976
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 982
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v83

    .line 983
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 993
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v83

    .line 994
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1001
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v83

    .line 1002
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1017
    .end local v83           #e:Ljava/lang/Throwable;
    .restart local v47       #safeMode:Z
    :cond_1d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3a

    .line 1024
    :catch_2f
    move-exception v83

    .line 1025
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1030
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v83

    .line 1031
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1037
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v83

    .line 1038
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1045
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v83

    .line 1046
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1052
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v83

    .line 1053
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1071
    .end local v83           #e:Ljava/lang/Throwable;
    .restart local v69       #config:Landroid/content/res/Configuration;
    .restart local v98       #metrics:Landroid/util/DisplayMetrics;
    .restart local v132       #w:Landroid/view/WindowManager;
    :catch_34
    move-exception v83

    .line 1072
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1077
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v83

    .line 1078
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1083
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v83

    .line 1084
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 488
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #safeMode:Z
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v69           #config:Landroid/content/res/Configuration;
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v83           #e:Ljava/lang/Throwable;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .end local v96           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v98           #metrics:Landroid/util/DisplayMetrics;
    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .end local v117           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v132           #w:Landroid/view/WindowManager;
    .end local v133           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v86       #firstBoot:Z
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    .restart local v101       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_37
    move-exception v7

    goto/16 :goto_5

    .line 993
    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v101           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v82       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #location:Lcom/android/server/LocationManagerService;
    .restart local v96       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v105       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v117       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v133       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_38
    move-exception v83

    move-object/from16 v81, v82

    .end local v82           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_58

    .line 975
    .end local v67           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v68       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_39
    move-exception v83

    move-object/from16 v67, v68

    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v67       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_57

    .line 934
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3a
    move-exception v83

    move-object/from16 v62, v63

    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_56

    .line 903
    .end local v113           #serial:Lcom/android/server/SerialService;
    .restart local v114       #serial:Lcom/android/server/SerialService;
    :catch_3b
    move-exception v83

    move-object/from16 v113, v114

    .end local v114           #serial:Lcom/android/server/SerialService;
    .restart local v113       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_55

    .line 894
    .end local v128           #usb:Lcom/android/server/usb/UsbService;
    .restart local v129       #usb:Lcom/android/server/usb/UsbService;
    :catch_3c
    move-exception v83

    move-object/from16 v128, v129

    .end local v129           #usb:Lcom/android/server/usb/UsbService;
    .restart local v128       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_54

    .line 858
    .end local v133           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v134       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3d
    move-exception v83

    move-object/from16 v133, v134

    .end local v134           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v133       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_53

    .line 828
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_3e
    move-exception v83

    move-object/from16 v73, v74

    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_52

    .line 820
    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #location:Lcom/android/server/LocationManagerService;
    :catch_3f
    move-exception v83

    move-object/from16 v94, v95

    .end local v95           #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_51

    .line 804
    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    :catch_40
    move-exception v83

    move-object/from16 v105, v106

    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v105       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_50

    .line 755
    .end local v70           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v71       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_41
    move-exception v83

    move-object/from16 v70, v71

    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v70       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_4f

    .line 742
    .end local v135           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v136       #wifi:Lcom/android/server/wifi/WifiService;
    :catch_42
    move-exception v83

    move-object/from16 v135, v136

    .end local v136           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v135       #wifi:Lcom/android/server/wifi/WifiService;
    goto/16 :goto_4e

    .line 734
    .end local v137           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v138       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_43
    move-exception v83

    move-object/from16 v137, v138

    .end local v138           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v137       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_4d

    .line 726
    :catch_44
    move-exception v83

    goto/16 :goto_4c

    .line 716
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v101       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v102       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_45
    move-exception v83

    move-object/from16 v29, v102

    .end local v102           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4b

    .line 708
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v122       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_46
    move-exception v83

    move-object/from16 v121, v122

    .end local v122           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4a

    .line 684
    .end local v117           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v118       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_47
    move-exception v83

    move-object/from16 v117, v118

    .end local v118           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_49

    .line 676
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_48
    move-exception v83

    move-object/from16 v76, v77

    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_48

    .line 668
    .end local v96           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v97       #lockSettings:Lcom/android/server/LockSettingsService;
    :catch_49
    move-exception v83

    move-object/from16 v96, v97

    .end local v97           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v96       #lockSettings:Lcom/android/server/LockSettingsService;
    goto/16 :goto_47

    .line 659
    .end local v99           #mountService:Lcom/android/server/MountService;
    .restart local v100       #mountService:Lcom/android/server/MountService;
    :catch_4a
    move-exception v83

    move-object/from16 v99, v100

    .end local v100           #mountService:Lcom/android/server/MountService;
    .restart local v99       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_46

    .line 646
    :catch_4b
    move-exception v7

    goto/16 :goto_11

    .line 613
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v88       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_4c
    move-exception v83

    move-object/from16 v87, v88

    .end local v88           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_45

    .line 590
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .end local v96           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .end local v117           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v133           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    .restart local v108       #power:Lcom/android/server/power/PowerManagerService;
    :catch_4d
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v78

    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v108

    .end local v108           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v93

    .end local v93           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_44

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    .restart local v108       #power:Lcom/android/server/power/PowerManagerService;
    :catch_4e
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v78

    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v108

    .end local v108           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v93

    .end local v93           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_44

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    :catch_4f
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v78

    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v93

    .end local v93           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_44

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    :catch_50
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v93

    .end local v93           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_44

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v86       #firstBoot:Z
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_51
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v93

    .end local v93           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v59, v60

    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_44

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_52
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_44

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_53
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_44

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    :catch_54
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v130, v131

    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_44

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    :catch_55
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v130, v131

    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_44

    .end local v65           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    :catch_56
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v65, v66

    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v65       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v130, v131

    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_44

    .line 507
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_57
    move-exception v83

    move-object/from16 v59, v60

    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_43

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #location:Lcom/android/server/LocationManagerService;
    .restart local v96       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v105       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v117       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v133       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1e
    move-object/from16 v25, v101

    .end local v101           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_39
.end method
