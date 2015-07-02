.class public Lcom/android/internal/policy/impl/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710


# instance fields
.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 52
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 164
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 76
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mServiceState:Landroid/telephony/ServiceState;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 158
    :pswitch_0
    const/4 v0, 0x1

    .line 161
    :cond_0
    :pswitch_1
    return v0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimMissing(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 2
    .parameter "simState"

    .prologue
    const/4 v0, 0x0

    .line 198
    if-nez p1, :cond_0

    .line 206
    :goto_0
    return v0

    .line 202
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 206
    .local v0, simMissing:Z
    :cond_2
    goto :goto_0
.end method

.method private unRegisterPhoneStateListener()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 191
    :cond_0
    return-void
.end method

.method private updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 8
    .parameter "simState"
    .parameter "phoneState"

    .prologue
    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, enabled:Z
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->isSimMissing(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v6

    .line 131
    .local v6, isSimMissing:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->hasService()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 132
    const/4 v3, 0x0

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZZZ)V

    .line 149
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 134
    const/4 v3, 0x1

    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v7

    .line 137
    .local v7, simLocked:Z
    if-eqz v7, :cond_3

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v3

    goto :goto_0

    .line 143
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 91
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->unRegisterPhoneStateListener()V

    .line 92
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 97
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 98
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 105
    .local v0, phoneState:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 106
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 107
    return-void
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 180
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPhone:Landroid/telephony/TelephonyManager;

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 184
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 116
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 126
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
