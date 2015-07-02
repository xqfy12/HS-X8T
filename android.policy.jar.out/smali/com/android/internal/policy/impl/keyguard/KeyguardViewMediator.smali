.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;,
	Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$BaiduInjector;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    }
.end annotation


# static fields
.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_WAKE:Z = false

.field static final DEBUG:Z = false

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final ENABLE_INSECURE_STATUS_BAR_EXPAND:Z = true

.field private static final HIDE:I = 0x3

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field private static final RESET:I = 0x4

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SHOW_ASSISTANT:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8

.field private static sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;


# instance fields
.field private engModeFlag:Z

.field private isChargeMode:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mExternallyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mKeyguardDonePending:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field private mScreenOn:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowing:Z

.field private mShowingLockIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentIntent:Landroid/content/Intent;

.field mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 11
    .parameter "context"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 494
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 195
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 202
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 206
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 209
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 231
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 242
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 244
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 261
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->engModeFlag:Z

    .line 262
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isChargeMode:Z

    .line 318
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 438
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 1038
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1129
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, p0, v7, v8, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 495
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 496
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 497
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    .line 498
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v7, "show keyguard"

    invoke-virtual {v4, v5, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 499
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 501
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v7, "keyguardWakeAndHandOff"

    invoke-virtual {v4, v5, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    .line 502
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 504
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 506
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 508
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 510
    if-eqz p2, :cond_6

    .end local p2
    :goto_0
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 512
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 514
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 516
    .local v3, wm:Landroid/view/WindowManager;
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1, v3, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .line 519
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 520
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v7, 0x2800

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 523
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 524
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "show_status_bar_lock"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowLockIcon:Z

    .line 526
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 528
    new-instance v4, Landroid/media/SoundPool;

    invoke-direct {v4, v5, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 529
    const-string v4, "lock_sound"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, soundPath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 531
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v4, v2, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 533
    :cond_0
    if-eqz v2, :cond_1

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v4, :cond_2

    .line 534
    :cond_1
    const-string v4, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to load lock sound from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_2
    const-string v4, "unlock_sound"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    if-eqz v2, :cond_3

    .line 538
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v4, v2, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 540
    :cond_3
    if-eqz v2, :cond_4

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v4, :cond_5

    .line 541
    :cond_4
    const-string v4, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to load unlock sound from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, #android:integer@config_lockSoundVolumeDb#t

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 545
    .local v1, lockSoundDefaultAttenuation:I
    const-wide/high16 v7, 0x4024

    int-to-float v4, v1

    const/high16 v9, 0x41a0

    div-float/2addr v4, v9

    float-to-double v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v4, v7

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 546
    const-string v4, "2"

    const-string v7, "ro.factorytest"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_2
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->engModeFlag:Z

    .line 547
    const-string v4, "ro.bootmode"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "charger"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isChargeMode:Z

    .line 548
    return-void

    .line 510
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #lockSoundDefaultAttenuation:I
    .end local v2           #soundPath:Ljava/lang/String;
    .end local v3           #wm:Landroid/view/WindowManager;
    .restart local p2
    :cond_6
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .end local p2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v3       #wm:Landroid/view/WindowManager;
    :cond_7
    move v4, v6

    .line 524
    goto/16 :goto_1

    .restart local v1       #lockSoundDefaultAttenuation:I
    .restart local v2       #soundPath:Ljava/lang/String;
    :cond_8
    move v5, v6

    .line 546
    goto :goto_2
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleWakeWhenReady(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method private adjustStatusBarLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1309
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 1310
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1313
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_2

    .line 1314
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Could not get status bar manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_1
    :goto_0
    return-void

    .line 1316
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v2, :cond_3

    .line 1318
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1319
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v2, :cond_3

    .line 1320
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v3, #android:string@status_bar_device_locked#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, contentDescription:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    const v4, #android:drawable@stat_sys_secure#t

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1325
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    .line 1337
    .end local v0           #contentDescription:Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 1338
    .local v1, flags:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_5

    .line 1342
    const/high16 v2, 0x100

    or-int/2addr v1, v2

    .line 1343
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1347
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1349
    const/high16 v2, 0x8

    or-int/2addr v1, v2

    .line 1351
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isAssistantAvailable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1352
    const/high16 v2, 0x200

    or-int/2addr v1, v2

    .line 1361
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$BaiduInjector;->processStatusBarExpandEnable(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)V

    goto :goto_0

    .end local v1           #flags:I
    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    goto :goto_1

    .restart local v1       #flags:I
    :cond_7
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    goto :goto_2
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 676
    return-void
.end method

.method private doKeyguardLaterLocked()V
    .locals 17

    .prologue
    .line 633
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 636
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v14, "screen_off_timeout"

    const/16 v15, 0x7530

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    int-to-long v2, v14

    .line 640
    .local v2, displayTimeout:J
    const-string v14, "lock_screen_lock_after_timeout"

    const/16 v15, 0x1388

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    int-to-long v5, v14

    .line 645
    .local v5, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v7

    .line 649
    .local v7, policyTimeout:J
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-lez v14, :cond_0

    .line 651
    const-wide/16 v14, 0x0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 652
    sub-long v14, v7, v2

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 657
    .local v10, timeout:J
    :goto_0
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gtz v14, :cond_1

    .line 659
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 672
    :goto_1
    return-void

    .line 654
    .end local v10           #timeout:J
    :cond_0
    move-wide v10, v5

    .restart local v10       #timeout:J
    goto :goto_0

    .line 663
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    add-long v12, v14, v10

    .line 664
    .local v12, when:J
    new-instance v4, Landroid/content/Intent;

    const-string v14, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v4, intent:Landroid/content/Intent;
    const-string v14, "seq"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v16, 0x1000

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 668
    .local v9, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v15, v12, v13, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private doKeyguardLocked()V
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 868
    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 7
    .parameter "options"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 875
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->engModeFlag:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isChargeMode:Z

    if-eqz v6, :cond_2

    .line 876
    :cond_0
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "don\'t lock screen in special boot mode !engModeFlag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->engModeFlag:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isChargeMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isChargeMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_1
    :goto_0
    return-void

    .line 882
    :cond_2
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v6, :cond_1

    .line 898
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 904
    const-string v6, "keyguard.no_require_sim"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    move v2, v4

    .line 906
    .local v2, requireSim:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    .line 907
    .local v1, provisioned:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 908
    .local v3, state:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v6, :cond_3

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v6, :cond_8

    :cond_3
    if-eqz v2, :cond_8

    :cond_4
    move v0, v4

    .line 913
    .local v0, lockedOrMissing:Z
    :goto_2
    if-nez v0, :cond_5

    if-eqz v1, :cond_1

    .line 919
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_1

    .line 926
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0           #lockedOrMissing:Z
    .end local v1           #provisioned:Z
    .end local v2           #requireSim:Z
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    move v2, v5

    .line 904
    goto :goto_1

    .restart local v1       #provisioned:Z
    .restart local v2       #requireSim:Z
    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8
    move v0, v5

    .line 908
    goto :goto_2
.end method

.method public static getAvatarCache()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;
    .locals 1

    .prologue
    .line 1461
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    return-object v0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 1287
    monitor-enter p0

    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    monitor-exit p0

    .line 1306
    :goto_0
    return-void

    .line 1296
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->hide()V

    .line 1301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1303
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1304
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1305
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleKeyguardDone(Z)V
    .locals 0
    .parameter "wakeup"

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1185
    if-eqz p1, :cond_0

    .line 1186
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 1189
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1190
    return-void
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1204
    monitor-enter p0

    .line 1206
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1209
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1216
    :cond_0
    monitor-exit p0

    .line 1217
    return-void

    .line 1216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 1

    .prologue
    .line 1425
    monitor-enter p0

    .line 1427
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOff()V

    .line 1428
    monitor-exit p0

    .line 1429
    return-void

    .line 1428
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 1
    .parameter "showListener"

    .prologue
    .line 1436
    monitor-enter p0

    .line 1438
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 1439
    monitor-exit p0

    .line 1440
    return-void

    .line 1439
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReset(Landroid/os/Bundle;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 1397
    if-nez p1, :cond_0

    .line 1398
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1400
    .restart local p1
    :cond_0
    const-string v0, "is_switching_user"

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1401
    monitor-enter p0

    .line 1403
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->reset(Landroid/os/Bundle;)V

    .line 1404
    monitor-exit p0

    .line 1405
    return-void

    .line 1404
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 838
    monitor-enter p0

    .line 839
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_0

    .line 840
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 841
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 842
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 844
    :cond_0
    monitor-exit p0

    .line 845
    return-void

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 1260
    monitor-enter p0

    .line 1262
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 1280
    :goto_0
    return-void

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 1265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1267
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1268
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1276
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1278
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1279
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1272
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleVerifyUnlock()V
    .locals 1

    .prologue
    .line 1412
    monitor-enter p0

    .line 1414
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->verifyUnlock()V

    .line 1415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1416
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1417
    monitor-exit p0

    .line 1418
    return-void

    .line 1417
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeWhenReady(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1373
    monitor-enter p0

    .line 1378
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1389
    monitor-exit p0

    .line 1390
    return-void

    .line 1389
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 1019
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1020
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1021
    return-void
.end method

.method private isAssistantAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1456
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 694
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 701
    :cond_0
    return-void
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 967
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    .line 976
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 977
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 978
    return-void
.end method

.method private playSounds(Z)V
    .locals 8
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1222
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_1

    .line 1223
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1228
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1229
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 1232
    .local v1, whichSound:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 1234
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 1240
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0

    .line 1229
    .end local v1           #whichSound:I
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private resetStateLocked(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 945
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 946
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 947
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 3

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 1194
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1195
    .local v0, currentUser:Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1197
    .end local v0           #currentUser:Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1009
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1010
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1011
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    .line 1249
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :goto_1
    return-void

    .line 1249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 956
    return-void
.end method

.method private wakeWhenReady(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 995
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 997
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 998
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 999
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->dismiss()V

    .line 936
    :cond_0
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    const/16 v2, 0xd

    .line 852
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 853
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 854
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 855
    return-void
.end method

.method public handleShowAssistant()V
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->showAssistant()V

    .line 1453
    return-void
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 1443
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 863
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 5
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1096
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1097
    monitor-enter p0

    .line 1098
    const v3, 0x11170

    const/4 v4, 0x2

    :try_start_0
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1100
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1101
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1102
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1104
    if-eqz p1, :cond_0

    .line 1105
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1108
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_1

    .line 1109
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1112
    if-eqz p1, :cond_1

    .line 1115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1119
    :cond_1
    monitor-exit p0

    .line 1120
    return-void

    :cond_2
    move v1, v2

    .line 1101
    goto :goto_0

    .line 1119
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 708
    monitor-enter p0

    .line 709
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    .line 712
    :cond_0
    monitor-exit p0

    .line 713
    return-void

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 719
    monitor-enter p0

    .line 720
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 721
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 723
    :cond_0
    monitor-exit p0

    .line 724
    return-void

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .locals 3
    .parameter "why"

    .prologue
    const/4 v0, 0x0

    .line 594
    monitor-enter p0

    .line 595
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 598
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 603
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 606
    .local v0, lockImmediately:Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_3

    .line 608
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 609
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 610
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v1, :cond_2

    .line 611
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 624
    :cond_2
    :goto_0
    monitor-exit p0

    .line 625
    return-void

    .line 613
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_4

    .line 614
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 615
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .line 624
    .end local v0           #lockImmediately:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 616
    .restart local v0       #lockImmediately:Z
    :cond_4
    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    if-nez v0, :cond_6

    .line 618
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    goto :goto_0

    .line 619
    :cond_6
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    .line 622
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 1
    .parameter "showListener"

    .prologue
    .line 682
    monitor-enter p0

    .line 683
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 684
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 686
    if-eqz p1, :cond_0

    .line 687
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 689
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 691
    return-void

    .line 689
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 555
    monitor-enter p0

    .line 557
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 577
    :goto_0
    const-string v0, "0"

    const-string v1, "ro.hmct.mtbf.test"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 581
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 585
    return-void

    .line 574
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(I)V
    .locals 0
    .parameter "keyCode"

    .prologue
    .line 1073
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeWhenReady(I)V

    .line 1074
    return-void
.end method

.method public onWakeMotionWhenKeyguardShowingTq()V
    .locals 1

    .prologue
    .line 1092
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeWhenReady(I)V

    .line 1093
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .parameter "newUserId"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1036
    return-void
.end method

.method public setHidden(Z)V
    .locals 6
    .parameter "isHidden"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 828
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    .line 829
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 830
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 831
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 832
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 828
    goto :goto_0

    :cond_1
    move v2, v3

    .line 830
    goto :goto_1
.end method

.method public setKeyguardEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 732
    monitor-enter p0

    .line 735
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 737
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2

    .line 738
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_0

    .line 742
    monitor-exit p0

    .line 781
    :goto_0
    return-void

    .line 748
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 749
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 780
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 750
    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_1

    .line 754
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 756
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_3

    .line 758
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 759
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 760
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_1

    .line 762
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 767
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 768
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 770
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 772
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public showAssistant()V
    .locals 3

    .prologue
    .line 1447
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1448
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1449
    return-void
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 480
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 481
    return-void
.end method

.method public userActivity(J)V
    .locals 4
    .parameter "holdMs"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 487
    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 787
    monitor-enter p0

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 806
    :goto_0
    monitor-exit p0

    .line 807
    return-void

    .line 793
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_1

    .line 797
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 799
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_2

    .line 801
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 803
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 804
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 477
    return-void
.end method

.method static synthetic access$iget-mStatusBarManager-216b72(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$iget-mShowing-2d9652(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method
