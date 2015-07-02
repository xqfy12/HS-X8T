.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$BaiduInjector;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MUSIC_QRD_SHUTDOWN_FILE:Ljava/lang/String; = "/data/qrd_theme/boot/shutdown.wav"

.field private static final MUSIC_SHUTDOWN_FILE:Ljava/lang/String; = "/system/media/shutdown.wav"

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field public static final SHUTDOWN_RUNNING_PROPERTY:Ljava/lang/String; = "sys.shutdown.running"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SYSTEM_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation.zip"

.field private static final SYSTEM_ENCRYPTED_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation-encrypted.zip"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final USER_BOOTANIMATION_FILE:Ljava/lang/String; = "/data/local/shutdownanimation.zip"

.field private static USE_HISENSE_NEW_UI_STYLE:Z

.field private static bPlayaudio:Z

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mUserConfirm:Z

.field private static mediaPlayer:Landroid/media/MediaPlayer;

.field private static mfor_reboot:Z

.field private static pd:Landroid/app/ProgressDialog;

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private isShutdownMusicPlaying:Z

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private shutdownMusicHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 83
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 88
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mUserConfirm:Z

    .line 89
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mfor_reboot:Z

    .line 100
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 120
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkHisenseStyle()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->USE_HISENSE_NEW_UI_STYLE:Z

    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    .line 811
    new-instance v0, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->shutdownMusicHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mfor_reboot:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mUserConfirm:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mUserConfirm:Z

    return p0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-object p0, Lcom/android/server/power/ShutdownThread;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/power/ShutdownThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    return p1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    const-string v3, "ShutdownThread"

    const-string v5, "Shutdown sequence already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v3, #android:style@Theme.Holo.Light.Dialog#t

    invoke-direct {v0, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v0, dialogContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkPlatform()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    const-string v3, "ShutdownThread"

    const-string v4, "This is QCOM,for shutdown song with headset"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    sput-object v3, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    .line 339
    sget-object v3, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x4

    const-string v5, "Headset"

    invoke-virtual {v3, v4, v6, v5}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 341
    sget-object v3, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v7, v4, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 345
    :cond_1
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->USE_HISENSE_NEW_UI_STYLE:Z

    if-eqz v3, :cond_3

    .line 346
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 350
    :goto_1
    sget-object v4, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mfor_reboot:Z

    if-eqz v3, :cond_4

    const v3, #android:string@global_action_reboot#t

    :goto_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    sget-object v4, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mfor_reboot:Z

    if-eqz v3, :cond_5

    const v3, #android:string@reboot_progress#t

    :goto_3
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 352
    sget-object v3, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 353
    sget-object v3, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 354
    sget-object v3, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 356
    sget-object v3, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    sget-object v3, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 359
    sget-object v3, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread$BaiduInjector;->showBaiduShutdownOrRebootProgressDialog(Landroid/content/Context;)V

    .line 361
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 362
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 365
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v7, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 367
    :try_start_1
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 369
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 370
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    :goto_4
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v7, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 378
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    :try_start_2
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "ShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 382
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 383
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 391
    :cond_2
    :goto_5
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v4, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v4}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 393
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v3}, Lcom/android/server/power/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 328
    .end local v0           #dialogContext:Landroid/content/Context;
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 348
    .restart local v0       #dialogContext:Landroid/content/Context;
    :cond_3
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    :cond_4
    const v3, #android:string@power_off#t

    goto/16 :goto_2

    :cond_5
    const v3, #android:string@shutdown_progress#t

    goto/16 :goto_3

    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v7, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_4

    .line 384
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 385
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v7, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_5
.end method

.method private static checkAnimationFileExist()Z
    .locals 2

    .prologue
    .line 789
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/shutdownanimation-encrypted.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    :cond_0
    const/4 v0, 0x1

    .line 794
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkHisenseStyle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 861
    const-string v1, "persist.hmct.origin.style"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 862
    const-string v1, "ro.hmct.hisense.style"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    const-string v1, "ShutdownThread"

    const-string v2, "checkHisenseStyle 2.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :goto_0
    return v0

    .line 866
    :cond_0
    const-string v0, "ShutdownThread"

    const-string v1, "checkHisenseStyle ORIGIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, 0x0

    goto :goto_0

    .line 870
    :cond_1
    const-string v1, "ShutdownThread"

    const-string v2, "checkHisenseStyle 3.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkPlatform()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, mTelephonyHmctPt:Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;
    if-nez v0, :cond_0

    .line 877
    const-class v3, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/hmct/common/HmctClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mTelephonyHmctPt:Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;
    check-cast v0, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;

    .line 880
    .restart local v0       #mTelephonyHmctPt:Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;
    :cond_0
    const-string v3, "qualcomm"

    invoke-interface {v0}, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 881
    const-string v2, "ShutdownThread"

    const-string v3, "This is qualcomm"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_0
    return v1

    .line 883
    :cond_1
    const-string v3, "marvell"

    invoke-interface {v0}, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 884
    const-string v2, "ShutdownThread"

    const-string v3, "This is marvell"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    :cond_2
    const-string v1, "ShutdownThread"

    const-string v3, "This is MTK"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 888
    goto :goto_0
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 7
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 839
    const-string v1, "com.android.server.power.ShutdownOem"

    .line 842
    .local v1, deviceShutdownClassName:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 845
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v3, "rebootOrShutdown"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 846
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 858
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v3

    goto :goto_0

    .line 853
    :catch_1
    move-exception v3

    goto :goto_0

    .line 850
    .restart local v0       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_2
    move-exception v3

    goto :goto_0

    .line 848
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private static getShutdownMusicFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 294
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/data/qrd_theme/boot/shutdown.wav"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "/system/media/shutdown.wav"

    aput-object v4, v1, v3

    .line 296
    .local v1, fileName:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 297
    .local v0, checkFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 298
    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 299
    new-instance v0, Ljava/io/File;

    .end local v0           #checkFile:Ljava/io/File;
    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v0       #checkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    :cond_0
    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 304
    const/4 v3, 0x0

    .line 305
    :goto_1
    return-object v3

    .line 298
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_2
    aget-object v3, v1, v2

    goto :goto_1
.end method

.method private static isBootSoundOff()Z
    .locals 3

    .prologue
    .line 801
    const-string v1, "persist.sys.bootsong"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, mode:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSilentMode()Z
    .locals 2

    .prologue
    .line 797
    const-string v1, "persist.sys.silent"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 276
    const-string v1, "true"

    const-string v2, "sys.monkey.enabled"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 277
    .local v0, isMonkeyMode:Z
    if-ne v0, v3, :cond_0

    .line 291
    :goto_0
    return-void

    .line 280
    :cond_0
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 281
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 282
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 283
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 284
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string v2, "reboot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mfor_reboot:Z

    .line 290
    :cond_1
    :goto_1
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    goto :goto_0

    .line 288
    :cond_2
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mfor_reboot:Z

    goto :goto_1
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 759
    if-eqz p0, :cond_0

    .line 760
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 785
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 787
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 768
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 770
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 778
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 779
    :catch_1
    move-exception v2

    goto :goto_0

    .line 771
    :catch_2
    move-exception v0

    .line 773
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x1

    .line 315
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 316
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 317
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 318
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 319
    return-void
.end method

.method private static showShutdownAnimation()V
    .locals 2

    .prologue
    .line 806
    const-string v0, "sys.shutdown.requested"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string v1, "true"

    const-string v2, "sys.monkey.enabled"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    .local v0, isMonkeyMode:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 140
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 141
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v6, 0x2

    .line 148
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 149
    :try_start_0
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 150
    const-string v4, "ShutdownThread"

    const-string v6, "Request to shutdown already running, returning."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit v5

    .line 237
    :goto_0
    return-void

    .line 153
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:integer@config_longPressOnPowerBehavior#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .local v2, longPressBehavior:I
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mfor_reboot:Z

    if-eqz v4, :cond_3

    if-ne v2, v6, :cond_2

    const v3, #android:string@reboot_confirm_question#t

    .local v3, resourceId:I
    :goto_1
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .local v0, closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->USE_HISENSE_NEW_UI_STYLE:Z

    if-eqz v4, :cond_6

    const-string v4, "ShutdownThread"

    const-string v5, "USE_HISENSE_NEW_UI_STYLE == true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, #android:style@Theme.Holo.Light.Dialog#t

    invoke-direct {v1, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v1, dialogContext:Landroid/content/Context;
    :goto_2
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v4, "ShutdownThread"

    const-string v5, "hisense style"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mfor_reboot:Z

    if-eqz v4, :cond_7

    const v4, #android:string@global_action_reboot#t

    :goto_3
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, #android:string@yes#t

    new-instance v6, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, #android:string@no#t

    new-instance v6, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v6}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 212
    const-string v4, "ShutdownThread"

    const-string v5, "sConfirmDialog is create end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 229
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 230
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 231
    const-string v4, "ShutdownThread"

    const-string v5, "sConfirmDialog show start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread$BaiduInjector;->showBaiduShutdownOrRebootDialog(Landroid/content/Context;)V

    .line 233
    const-string v4, "ShutdownThread"

    const-string v5, "sConfirmDialog show end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    .end local v0           #closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v1           #dialogContext:Landroid/content/Context;
    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v2       #longPressBehavior:I
    :cond_2
    const v3, #android:string@reboot_confirm#t

    goto/16 :goto_1

    :cond_3
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_4

    const v3, #android:string@reboot_safemode_confirm#t

    .restart local v3       #resourceId:I
    :goto_4
    goto/16 :goto_1

    .end local v3           #resourceId:I
    :cond_4
    if-ne v2, v6, :cond_5

    const v3, #android:string@shutdown_confirm_question#t

    goto :goto_4

    :cond_5
    const v3, #android:string@shutdown_confirm#t

    goto :goto_4

    .line 184
    .restart local v0       #closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v3       #resourceId:I
    :cond_6
    const-string v4, "ShutdownThread"

    const-string v5, "USE_HISENSE_NEW_UI_STYLE == false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object v1, p0

    .restart local v1       #dialogContext:Landroid/content/Context;
    goto/16 :goto_2

    .line 191
    :cond_7
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_8

    const v4, #android:string@reboot_safemode_title#t

    goto/16 :goto_3

    :cond_8
    const v4, #android:string@power_off#t

    goto/16 :goto_3

    .line 235
    .end local v0           #closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v1           #dialogContext:Landroid/content/Context;
    :cond_9
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 8
    .parameter "timeout"

    .prologue
    .line 582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 583
    .local v1, endTime:J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 584
    .local v0, done:[Z
    new-instance v3, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;J[Z)V

    .line 738
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 740
    int-to-long v4, p1

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_0

    .line 744
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    return-void

    .line 741
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static startBootAnimation()V
    .locals 3

    .prologue
    .line 399
    :try_start_0
    const-string v1, "service.bootanim.exit"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "ShutdownThread"

    const-string v2, "Set \'service.bootanim.exit\' = 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    const-string v1, "ctl.start"

    const-string v2, "bootanim:shut nomp3"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, "ShutdownThread"

    const-string v2, "bootanim:shut nomp3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 401
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 402
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "ShutdownThread"

    const-string v2, "Failed to set \'service.bootanim.exit\' = 0)."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 426
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 427
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 434
    new-instance v6, Lcom/android/server/power/ShutdownThread$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 441
    .local v6, br:Landroid/content/BroadcastReceiver;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 454
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_8

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 455
    .local v24, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_1

    .line 463
    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_1
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v17, v2, v4

    .line 474
    .local v17, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 475
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_2

    .line 476
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v17, v4

    .line 477
    .local v12, delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_a

    .line 478
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v12           #delay:J
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    const-string v2, "fastpoweroff"

    const-string v3, "sys.shutdown.fast"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 488
    .local v21, isFastPowerOnOff:Z
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sys.shutdown.fast"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IT IS FAST POWER ON OFF "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_b

    .line 496
    :goto_4
    const/16 v25, 0x0

    .line 497
    .local v25, shutDownFile:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isBootSoundOff()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getShutdownMusicFilePath()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_3

    .line 499
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    .line 500
    const-string v2, "ShutdownThread"

    const-string v3, "obtainMessage for shutdown music"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->shutdownMusicHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 504
    :cond_3
    const-string v2, "ShutdownThread"

    const-string v3, "shutdown radio start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 506
    const-string v2, "ShutdownThread"

    const-string v3, "wait for shutdown music"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v19, v2, v4

    .line 508
    .local v19, endTimeForMusic:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 509
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-eqz v2, :cond_4

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v19, v4

    .line 511
    .restart local v12       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_c

    .line 512
    const-string v2, "ShutdownThread"

    const-string v4, "play shutdown music timeout!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v12           #delay:J
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-nez v2, :cond_5

    .line 521
    const-string v2, "ShutdownThread"

    const-string v4, "play shutdown music complete."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 524
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 528
    .local v11, am:Landroid/app/IActivityManager;
    if-eqz v11, :cond_6

    .line 530
    const/16 v2, 0x2710

    :try_start_3
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    .line 539
    :cond_6
    :goto_6
    new-instance v23, Lcom/android/server/power/ShutdownThread$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 546
    .local v23, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 550
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    add-long v15, v2, v4

    .line 551
    .local v15, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 553
    :try_start_4
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v22

    .line 555
    .local v22, mount:Landroid/os/storage/IMountService;
    if-eqz v22, :cond_d

    .line 556
    invoke-interface/range {v22 .. v23}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 563
    .end local v22           #mount:Landroid/os/storage/IMountService;
    :goto_7
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_7

    .line 564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v15, v4

    .line 565
    .restart local v12       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_e

    .line 566
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local v12           #delay:J
    :cond_7
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 576
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 577
    return-void

    .line 454
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v15           #endShutTime:J
    .end local v17           #endTime:J
    .end local v19           #endTimeForMusic:J
    .end local v21           #isFastPowerOnOff:Z
    .end local v23           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v24           #reason:Ljava/lang/String;
    .end local v25           #shutDownFile:Ljava/lang/String;
    :cond_8
    const-string v2, "0"

    goto/16 :goto_1

    :cond_9
    const-string v2, ""

    goto/16 :goto_2

    .line 482
    .restart local v12       #delay:J
    .restart local v17       #endTime:J
    .restart local v24       #reason:Ljava/lang/String;
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 483
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 486
    .end local v12           #delay:J
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 493
    .restart local v21       #isFastPowerOnOff:Z
    :cond_b
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down animation "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showShutdownAnimation()V

    goto/16 :goto_4

    .line 516
    .restart local v12       #delay:J
    .restart local v19       #endTimeForMusic:J
    .restart local v25       #shutDownFile:Ljava/lang/String;
    :cond_c
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_5

    .line 517
    :catch_1
    move-exception v2

    goto/16 :goto_5

    .line 523
    .end local v12           #delay:J
    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v2

    .line 558
    .restart local v11       #am:Landroid/app/IActivityManager;
    .restart local v15       #endShutTime:J
    .restart local v22       #mount:Landroid/os/storage/IMountService;
    .restart local v23       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_d
    :try_start_a
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_7

    .line 560
    .end local v22           #mount:Landroid/os/storage/IMountService;
    :catch_2
    move-exception v14

    .line 561
    .local v14, e:Ljava/lang/Exception;
    :try_start_b
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 574
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v2

    .line 570
    .restart local v12       #delay:J
    :cond_e
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_7

    .line 571
    :catch_3
    move-exception v2

    goto :goto_7

    .line 444
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v12           #delay:J
    .end local v15           #endShutTime:J
    .end local v17           #endTime:J
    .end local v19           #endTimeForMusic:J
    .end local v21           #isFastPowerOnOff:Z
    .end local v23           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v24           #reason:Ljava/lang/String;
    .end local v25           #shutDownFile:Ljava/lang/String;
    :catch_4
    move-exception v2

    goto/16 :goto_0

    .line 531
    .restart local v11       #am:Landroid/app/IActivityManager;
    .restart local v17       #endTime:J
    .restart local v19       #endTimeForMusic:J
    .restart local v21       #isFastPowerOnOff:Z
    .restart local v24       #reason:Ljava/lang/String;
    .restart local v25       #shutDownFile:Ljava/lang/String;
    :catch_5
    move-exception v2

    goto/16 :goto_6
.end method

.method static synthetic access$sget-mReboot-7ffdb3()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$sput-mRebootReason-ba5398(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$sget-mRebootSafeMode-6a6402()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    return v0
.end method

.method static synthetic access$sput-sConfirmDialog-38d6d6(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object p0
.end method
