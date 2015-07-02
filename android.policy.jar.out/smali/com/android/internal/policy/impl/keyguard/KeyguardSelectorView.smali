.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MMS_CLASS_NAME:Ljava/lang/String; = "com.android.mms.ui.ConversationList"

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final MMS_UNREAD_CLASS_NAME:Ljava/lang/String; = "com.android.mms.ui.MailBoxMessageList"

.field private static final TAG:Ljava/lang/String; = "SecuritySelectorView"


# instance fields
.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

.field mEicoOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

.field private mFadeView:Landroid/view/View;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsBouncing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 153
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    .line 239
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 252
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 275
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateTargets()V
    .locals 15

    .prologue
    .line 332
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    .line 333
    .local v2, currentUserHandle:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    .line 334
    .local v6, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v5

    .line 335
    .local v5, disabledFeatures:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/lit8 v11, v5, 0x2

    if-eqz v11, :cond_4

    const/4 v10, 0x1

    .line 337
    .local v10, secureCameraDisabled:Z
    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v10, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 339
    .local v0, cameraDisabledByAdmin:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 340
    .local v7, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v4

    .line 341
    .local v4, disabledBySimState:Z
    const v11, 0x108034a

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v1

    .line 343
    .local v1, cameraTargetPresent:Z
    const v11, 0x10802f0

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v9

    .line 346
    .local v9, searchTargetPresent:Z
    if-eqz v0, :cond_6

    .line 347
    const-string v11, "SecuritySelectorView"

    const-string v12, "Camera disabled by Device Policy"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    :goto_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "user_setup_complete"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v3, 0x1

    .line 356
    .local v3, currentUserSetup:Z
    :goto_3
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v12, "search"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/SearchManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_8

    const/4 v8, 0x1

    .line 359
    .local v8, searchActionAvailable:Z
    :goto_4
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    if-nez v3, :cond_9

    :cond_2
    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    .line 361
    if-nez v4, :cond_3

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    if-nez v3, :cond_a

    :cond_3
    const/4 v11, 0x1

    :goto_6
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateResources()V

    .line 364
    return-void

    .line 335
    .end local v0           #cameraDisabledByAdmin:Z
    .end local v1           #cameraTargetPresent:Z
    .end local v3           #currentUserSetup:Z
    .end local v4           #disabledBySimState:Z
    .end local v7           #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v8           #searchActionAvailable:Z
    .end local v9           #searchTargetPresent:Z
    .end local v10           #secureCameraDisabled:Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 337
    .restart local v10       #secureCameraDisabled:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 348
    .restart local v0       #cameraDisabledByAdmin:Z
    .restart local v1       #cameraTargetPresent:Z
    .restart local v4       #disabledBySimState:Z
    .restart local v7       #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .restart local v9       #searchTargetPresent:Z
    :cond_6
    if-eqz v4, :cond_1

    .line 349
    const-string v11, "SecuritySelectorView"

    const-string v12, "Camera disabled by Sim State"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 351
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 356
    .restart local v3       #currentUserSetup:Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 359
    .restart local v8       #searchActionAvailable:Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 361
    :cond_a
    const/4 v11, 0x0

    goto :goto_6
.end method


# virtual methods
.method doTransition(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 403
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 405
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 459
    return-void
.end method

.method public isTargetPresent(I)Z
    .locals 4
    .parameter "resId"

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 308
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-eqz v2, :cond_2

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 309
    goto :goto_0

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    if-eqz v2, :cond_3

    .line 313
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;->getTargetPosition(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 316
    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 280
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 281
    const v1, 0x10202c9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 282
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-nez v1, :cond_0

    .line 283
    const v1, 0x1020296

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;)V

    .line 296
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V

    .line 298
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 299
    const v1, 0x1020299

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, bouncerFrameView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 301
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 435
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 440
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;->reset(Z)V

    .line 425
    :cond_1
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 0
    .parameter "carrierArea"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    .line 305
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 409
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 413
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 452
    return-void
.end method

.method public showUsabilityHint()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mEicoGlowPadViewBase:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;->ping()V

    .line 329
    :cond_1
    return-void
.end method

.method public updateResources()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const v8, 0x10802f0

    const/4 v5, 0x0

    .line 368
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-eqz v3, :cond_1

    .line 369
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v3, :cond_0

    .line 370
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v6, "search"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v7, -0x2

    invoke-virtual {v3, v6, v5, v7}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 372
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 377
    .local v0, component:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v6, "com.android.systemui.action_assist_icon_google"

    invoke-virtual {v3, v0, v6, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v2

    .line 381
    .local v2, replaced:Z
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v6, "com.android.systemui.action_assist_icon"

    invoke-virtual {v3, v0, v6, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 384
    const-string v3, "SecuritySelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t grab icon from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #replaced:Z
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v7, 0x108034a

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v7, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 391
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v3, v8, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 394
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 389
    goto :goto_0

    :cond_3
    move v4, v5

    .line 391
    goto :goto_1
.end method
