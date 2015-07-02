.class public Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;
.super Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GONE_DELAY:I = 0x32

.field private static final GONE_DURATION:I = 0xfa

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final LINE_ATTRACT_DURATION:I = 0x15e

.field private static final LINE_HEIGHT:I = 0x3

.field private static final MSG_PING:I = 0x2

.field private static final NONE:I = -0x1

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAPED_ANIMATION_DURATION:I = 0xd8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EicoGlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field static count:I


# instance fields
.field private createStartTime:J

.field private eicoCount:I

.field private isAnimLoadCmplete:Z

.field isIndicatorAnimRunning:Z

.field private isLoadComplete:Z

.field isRockAnimRunning:Z

.field private isShowed:Z

.field private isSnaped:Z

.field private mActiveTarget:I

.field mAnimatDrawableCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;

.field mAsynchTaskHandler:Landroid/os/Handler;

.field private mAttractIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAttrs:Landroid/util/AttributeSet;

.field mBatteryView:Landroid/view/View;

.field private mConfig:Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;

.field private mContext:Landroid/content/Context;

.field private mDownStartX:F

.field private mDownStartY:F

.field private mDragging:Z

.field private mDurationMax:J

.field private mDurationMin:J

.field private mGlowRadius:F

.field private mGoneAnimations:Landroid/animation/AnimatorSet;

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

.field private mHorizontalInset:I

.field mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field mIndicatorCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;

.field private mIndicatorHandle:Landroid/os/Handler;

.field mIndicatorTotalTime:J

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mIsToGone:Z

.field private mLineViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mLockShakeHandle:Landroid/os/Handler;

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNotifyChange:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;

.field private mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

.field mPointLockDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressed:Z

.field mSnapAnimateCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;

.field private mSnapHandle:Landroid/os/Handler;

.field private mSnapMargin:F

.field mSnapedAnimateTotalTime:J

.field private mSnapedLastDrawable:Landroid/graphics/drawable/Drawable;

.field mStarUpdateTime:J

.field mStartShockTotalTime:J

.field private mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

.field private mTargetAnimator:Landroid/animation/Animator;

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTensionMax:F

.field private mTensionMin:F

.field private mTensionProportion:F

.field mUnlockDrawable:Landroid/graphics/drawable/Drawable;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mViewPorxyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mViewXYPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/NetNodeValue;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveCenterX:F

.field private mWaveCenterY:F

.field rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private targetArrayResID:I

.field tmpIndex:Lcom/android/internal/policy/impl/keyguard/LoopIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2266
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->count:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mBatteryView:Landroid/view/View;

    .line 90
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isShowed:Z

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 97
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    .line 99
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    invoke-direct {v3, p0, v7}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    .line 106
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "eico_count"

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    .line 126
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    .line 127
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapMargin:F

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    .line 132
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    .line 172
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 181
    const/16 v3, 0x30

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGravity:I

    .line 182
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mInitialLayout:Z

    .line 186
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPressed:Z

    .line 188
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mConfig:Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;

    .line 191
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 192
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isIndicatorAnimRunning:Z

    .line 193
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    .line 195
    iput-wide v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorTotalTime:J

    .line 196
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPointLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 198
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 199
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isRockAnimRunning:Z

    .line 200
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    .line 202
    iput-wide v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mStartShockTotalTime:J

    .line 204
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 205
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    .line 209
    iput-wide v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapedAnimateTotalTime:J

    .line 210
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isSnaped:Z

    .line 211
    iput-wide v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->createStartTime:J

    .line 212
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isAnimLoadCmplete:Z

    .line 214
    iput-wide v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mStarUpdateTime:J

    .line 215
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIsToGone:Z

    .line 220
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAsynchTaskHandler:Landroid/os/Handler;

    .line 231
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mContext:Landroid/content/Context;

    .line 232
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttrs:Landroid/util/AttributeSet;

    .line 233
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isLoadComplete:Z

    .line 234
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mNotifyChange:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;

    .line 1863
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDownStartX:F

    .line 1864
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDownStartY:F

    .line 2265
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->tmpIndex:Lcom/android/internal/policy/impl/keyguard/LoopIndex;

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->createStartTime:J

    .line 250
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isAnimLoadCmplete:Z

    .line 251
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isLoadComplete:Z

    .line 252
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 254
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mContext:Landroid/content/Context;

    .line 255
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttrs:Landroid/util/AttributeSet;

    .line 256
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->init()V

    .line 257
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIsToGone:Z

    .line 258
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 260
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttrs:Landroid/util/AttributeSet;

    sget-object v5, Lcom/android/internal/R$styleable;->GlowPadView:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 262
    .local v0, a:Landroid/content/res/TypedArray;
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v11, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mInnerRadius:F

    .line 265
    const/16 v3, 0xc

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    .line 267
    const/16 v3, 0xe

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapMargin:F

    .line 269
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v2, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 271
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 272
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    const/4 v4, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 275
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeLines(I)V

    .line 279
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGlowRadius:F

    .line 281
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 287
    .local v1, outValue:Landroid/util/TypedValue;
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 288
    const v3, 0x107003d

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->targetArrayResID:I

    .line 294
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->targetArrayResID:I

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->internalSetTargetResources(I)V

    .line 298
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 299
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must specify at least one target drawable"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 290
    const v3, 0x107003e

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->targetArrayResID:I

    goto :goto_0

    .line 292
    :cond_2
    const v3, 0x107003c

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->targetArrayResID:I

    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 306
    sget-object v3, Landroid/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 308
    const/16 v3, 0x30

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGravity:I

    .line 310
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 313
    const-string v3, "EicoGlowPadView"

    const-string v4, " EicoGlowPadView, post start "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->loadAnimation()V

    .line 324
    const-string v3, "EicoGlowPadView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " EicoGlowPadView, create cost : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->createStartTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->playAnimation(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;FFJ)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeTargetSwingAnimator(Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;FFJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeScaleAnimator(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->playSnapAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapedLastDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->stopSnapAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setGrabbedState(I)V

    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2067
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    .line 2071
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 2072
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapMargin:F

    .line 2076
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 2077
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mInnerRadius:F

    .line 2079
    :cond_2
    return-void
.end method

.method private calcLength(FFFF)I
    .locals 11
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    const-wide/high16 v9, 0x4000

    const-wide/high16 v7, 0x3fe0

    .line 2327
    sub-float v0, p3, p1

    .line 2328
    .local v0, deltaX:F
    sub-float v1, p4, p2

    .line 2329
    .local v1, deltaY:F
    float-to-double v3, v0

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v5, v1

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v3, v7

    double-to-int v2, v3

    .line 2330
    .local v2, length:I
    return v2
.end method

.method private calcRotation(FFFF)F
    .locals 7
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 2334
    sub-float v0, p3, p1

    .line 2335
    .local v0, deltaX:F
    sub-float v1, p4, p2

    .line 2337
    .local v1, deltaY:F
    div-float v3, v1, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v2, v3

    .line 2339
    .local v2, rotation:F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 2340
    const-wide v3, 0x400921fb54442d18L

    float-to-double v5, v2

    add-double/2addr v3, v5

    double-to-float v2, v3

    .line 2342
    :cond_0
    return v2
.end method

.method private changeLine(ILcom/android/internal/policy/impl/keyguard/NetNodeValue;)V
    .locals 22
    .parameter "index"
    .parameter "newValue"

    .prologue
    .line 1000
    new-instance v13, Lcom/android/internal/policy/impl/keyguard/LoopIndex;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v13, v1}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;-><init>(I)V

    .line 1001
    .local v13, loopIndex:Lcom/android/internal/policy/impl/keyguard/LoopIndex;
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->setCurrent(I)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->previous()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v14

    .line 1005
    .local v14, view0:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->next()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v15

    .line 1008
    .local v15, view1:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->x:F

    move/from16 v16, v0

    .line 1009
    .local v16, x:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->y:F

    move/from16 v19, v0

    .line 1011
    .local v19, y:F
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v17

    .line 1012
    .local v17, x0:F
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v20

    .line 1014
    .local v20, y0:F
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v18

    .line 1015
    .local v18, x1:F
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v21

    .line 1017
    .local v21, y1:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->previous()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1018
    .local v6, line0:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->current()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1020
    .local v12, line1:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    const/high16 v1, 0x4040

    add-float v2, v17, v1

    const/high16 v1, 0x4040

    add-float v3, v20, v1

    const/high16 v1, 0x4040

    add-float v4, v16, v1

    const/high16 v1, 0x4040

    add-float v5, v19, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setLineView(FFFFLcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;)V

    .line 1021
    const/high16 v1, 0x4040

    add-float v8, v16, v1

    const/high16 v1, 0x4040

    add-float v9, v19, v1

    const/high16 v1, 0x4040

    add-float v10, v18, v1

    const/high16 v1, 0x4040

    add-float v11, v21, v1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setLineView(FFFFLcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;)V

    .line 1027
    return-void
.end method

.method private computeInsets(II)V
    .locals 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v4, 0x0

    .line 2082
    const/4 v1, 0x1

    .line 2083
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGravity:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 2086
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 2095
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHorizontalInset:I

    .line 2098
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 2107
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mVerticalInset:I

    .line 2110
    :goto_1
    return-void

    .line 2088
    :pswitch_1
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 2091
    :pswitch_2
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 2100
    :sswitch_0
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 2103
    :sswitch_1
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 2086
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2098
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 1246
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1247
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1248
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1249
    .local v2, target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 1247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1251
    .end local v2           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    .line 1252
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;->onFinishFinalAnimation()V

    .line 1271
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichTarget"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 1265
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 2350
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1277
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    .line 1278
    .local v1, activeTarget:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v9, v0

    .line 1280
    .local v9, targetHit:Z
    :goto_0
    if-eqz v9, :cond_2

    .line 1284
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isSnaped:Z

    .line 1286
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->highlightSelected(I)V

    .line 1296
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->stop()V

    .line 1297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1299
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->stopShakeLock()V

    .line 1300
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1301
    .local v7, length:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_1

    .line 1302
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1303
    .local v8, target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual {v8, v5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1304
    invoke-virtual {v8, v2}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setEnabled(Z)V

    .line 1301
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6           #i:I
    .end local v7           #length:I
    .end local v8           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    .end local v9           #targetHit:Z
    :cond_0
    move v9, v2

    .line 1278
    goto :goto_0

    .line 1306
    .restart local v6       #i:I
    .restart local v7       #length:I
    .restart local v9       #targetHit:Z
    :cond_1
    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x32

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->gone(IJJ)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    .line 1327
    .end local v6           #i:I
    .end local v7           #length:I
    :goto_2
    return-void

    .line 1310
    :cond_2
    const-string v3, "EicoGlowPadView"

    const-string v4, "Finish with no target hit "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->playAnimation(Z)V

    .line 1314
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->hideTargets(ZZ)V

    .line 1316
    const-wide/16 v3, 0x15e

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->unattract(J)V

    .line 1317
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->hideTargetsImmediate()V

    .line 1318
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setPositionX(F)V

    .line 1319
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setPositionY(F)V

    .line 1320
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setX(F)V

    .line 1321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setY(F)V

    .line 1323
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setGrabbedState(I)V

    goto :goto_2
.end method

.method private drawLines(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2324
    :cond_0
    return-void

    .line 2287
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2288
    const/4 v8, 0x0

    .line 2289
    .local v8, line:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 2290
    .local v5, paint:Landroid/graphics/Paint;
    const/16 v0, 0x7d

    const/4 v1, 0x0

    const/16 v2, 0xed

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2292
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2293
    .local v9, size:I
    add-int/lit8 v7, v9, -0x1

    .local v7, i:I
    :goto_0
    if-ltz v7, :cond_0

    .line 2294
    const/high16 v0, 0x4040

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2295
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #line:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    check-cast v8, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 2297
    .restart local v8       #line:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 2298
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2299
    .local v6, bounds:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2300
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getRotation()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getPositionX()F

    move-result v1

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getPositionY()F

    move-result v2

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2302
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getPositionX()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getPositionY()F

    move-result v1

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2306
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2293
    .end local v6           #bounds:Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method private getIndex(FF)I
    .locals 13
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 1590
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1591
    .local v4, ntargets:I
    const-wide/16 v7, 0x0

    .line 1592
    .local v7, targetMinRad:D
    const-wide/16 v5, 0x0

    .line 1593
    .local v5, targetMaxRad:D
    neg-float v9, p2

    float-to-double v9, v9

    float-to-double v11, p1

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 1594
    .local v1, angleRad:D
    :goto_0
    const-wide/16 v9, 0x0

    cmpl-double v9, v1, v9

    if-lez v9, :cond_0

    .line 1595
    const-wide v9, -0x3fe6de04abbbd2e8L

    add-double/2addr v1, v9

    goto :goto_0

    .line 1596
    :cond_0
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    .line 1597
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_d

    .line 1600
    if-nez v3, :cond_1

    .line 1601
    const-wide v7, 0x4004f1a6c638d03fL

    .line 1602
    const-wide v5, 0x400d524fe24f89f1L

    .line 1604
    :cond_1
    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    .line 1605
    const-wide v7, 0x4010c152382d7365L

    .line 1606
    const-wide v5, 0x4014f1a6c638d03fL

    .line 1608
    :cond_2
    const/4 v9, 0x2

    if-ne v3, v9, :cond_3

    .line 1609
    const-wide v7, 0x401709d10d3e7eabL

    .line 1610
    const-wide v5, 0x401b3a259b49db85L

    .line 1613
    :cond_3
    cmpl-double v9, v1, v7

    if-lez v9, :cond_4

    cmpg-double v9, v1, v5

    if-lez v9, :cond_5

    :cond_4
    const-wide v9, 0x401921fb54442d18L

    add-double/2addr v9, v1

    cmpl-double v9, v9, v7

    if-lez v9, :cond_6

    const-wide v9, 0x401921fb54442d18L

    add-double/2addr v9, v1

    cmpg-double v9, v9, v5

    if-gtz v9, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 1616
    .local v0, angleMatches:Z
    :goto_2
    if-eqz v0, :cond_7

    move v9, v3

    .line 1633
    .end local v0           #angleMatches:Z
    :goto_3
    return v9

    .line 1613
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 1597
    .restart local v0       #angleMatches:Z
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1621
    .end local v0           #angleMatches:Z
    .end local v3           #i:I
    :cond_8
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v4, :cond_d

    .line 1622
    int-to-double v9, v3

    const-wide/high16 v11, 0x3fe0

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    mul-double/2addr v9, v11

    const-wide v11, 0x400921fb54442d18L

    mul-double/2addr v9, v11

    int-to-double v11, v4

    div-double v7, v9, v11

    .line 1623
    int-to-double v9, v3

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    mul-double/2addr v9, v11

    const-wide v11, 0x400921fb54442d18L

    mul-double/2addr v9, v11

    int-to-double v11, v4

    div-double v5, v9, v11

    .line 1625
    cmpl-double v9, v1, v7

    if-lez v9, :cond_9

    cmpg-double v9, v1, v5

    if-lez v9, :cond_a

    :cond_9
    const-wide v9, 0x401921fb54442d18L

    add-double/2addr v9, v1

    cmpl-double v9, v9, v7

    if-lez v9, :cond_b

    const-wide v9, 0x401921fb54442d18L

    add-double/2addr v9, v1

    cmpg-double v9, v9, v5

    if-gtz v9, :cond_b

    :cond_a
    const/4 v0, 0x1

    .line 1628
    .restart local v0       #angleMatches:Z
    :goto_5
    if-eqz v0, :cond_c

    move v9, v3

    .line 1629
    goto :goto_3

    .line 1625
    .end local v0           #angleMatches:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    .line 1621
    .restart local v0       #angleMatches:Z
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1633
    .end local v0           #angleMatches:Z
    :cond_d
    const/4 v9, -0x1

    goto :goto_3
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 2
    .parameter "a"
    .parameter "id"

    .prologue
    .line 1055
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 1056
    .local v0, tv:Landroid/util/TypedValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 4

    .prologue
    .line 2355
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2357
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2358
    const v2, 0x3fa66666

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGlowRadius:F

    mul-float v1, v2, v3

    .line 2363
    .local v1, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->square(F)F

    move-result v2

    return v2

    .line 2361
    .end local v1           #scaledTapRadius:F
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGlowRadius:F

    .restart local v1       #scaledTapRadius:F
    goto :goto_0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1900
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->switchToState(IFF)V

    .line 1902
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1869
    .local v0, eventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1871
    .local v1, eventY:F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1872
    const-string v2, "EicoGlowPadView"

    const-string v3, "*** handleDown if ***"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDragging:Z

    .line 1880
    :goto_0
    return-void

    .line 1875
    :cond_0
    const-string v2, "EicoGlowPadView"

    const-string v3, "*** handleDown else ***"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setBatteryViewVisiblity(I)V

    .line 1877
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->switchToState(IFF)V

    .line 1878
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 38
    .parameter "event"

    .prologue
    .line 1905
    const/4 v4, -0x1

    .line 1906
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 1907
    .local v10, historySize:I
    const/4 v15, 0x0

    .line 1908
    .local v15, moveDistance:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDownStartX:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDownStartY:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dist2(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v15, v0

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    .line 1911
    .local v26, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1912
    .local v17, ntargets:I
    const/16 v30, 0x0

    .line 1913
    .local v30, x:F
    const/16 v31, 0x0

    .line 1914
    .local v31, y:F
    const/4 v12, 0x0

    .local v12, k:I
    :goto_0
    add-int/lit8 v32, v10, 0x1

    move/from16 v0, v32

    if-ge v12, v0, :cond_e

    .line 1915
    if-ge v12, v10, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v8

    .line 1917
    .local v8, eventX:F
    :goto_1
    if-ge v12, v10, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v9

    .line 1920
    .local v9, eventY:F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    move/from16 v32, v0

    sub-float v28, v8, v32

    .line 1921
    .local v28, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    move/from16 v32, v0

    sub-float v29, v9, v32

    .line 1922
    .local v29, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dist2(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v27, v0

    .line 1923
    .local v27, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    move/from16 v32, v0

    cmpl-float v32, v27, v32

    if-lez v32, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    move/from16 v32, v0

    div-float v18, v32, v27

    .line 1925
    .local v18, scale:F
    :goto_3
    mul-float v13, v28, v18

    .line 1926
    .local v13, limitX:F
    mul-float v14, v29, v18

    .line 1927
    .local v14, limitY:F
    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 1929
    .local v6, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDragging:Z

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 1930
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 1933
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDragging:Z

    move/from16 v32, v0

    if-eqz v32, :cond_d

    .line 1936
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    move/from16 v0, v17

    if-ge v11, v0, :cond_d

    .line 1937
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1940
    .local v21, target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v20

    .line 1941
    .local v20, snapRadius:F
    mul-float v19, v20, v20

    .line 1942
    .local v19, snapDistance2:F
    const-wide/16 v24, 0x0

    .line 1943
    .local v24, targetMinRad:D
    const-wide/16 v22, 0x0

    .line 1949
    .local v22, targetMaxRad:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    .line 1950
    if-nez v11, :cond_1

    .line 1951
    const-wide v24, 0x4002d97c7f3321d2L

    .line 1952
    const-wide v22, 0x400f6a7a2955385eL

    .line 1954
    :cond_1
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v11, v0, :cond_2

    .line 1955
    const-wide v24, 0x400f6a7a2955385eL

    .line 1956
    const-wide v22, 0x4015fdbbe9bba775L

    .line 1958
    :cond_2
    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v11, v0, :cond_3

    .line 1959
    const-wide v24, 0x4015fdbbe9bba775L

    .line 1960
    const-wide v22, 0x401c463abeccb2bbL

    .line 1967
    :cond_3
    :goto_5
    const/16 v16, 0x0

    .line 1968
    .local v16, moveEnough:Z
    const/high16 v32, 0x428c

    cmpl-float v32, v15, v32

    if-ltz v32, :cond_4

    .line 1969
    const/16 v16, 0x1

    .line 1972
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->isEnabled()Z

    move-result v32

    if-eqz v32, :cond_7

    if-eqz v16, :cond_7

    .line 1973
    cmpl-double v32, v6, v24

    if-lez v32, :cond_5

    cmpg-double v32, v6, v22

    if-lez v32, :cond_6

    :cond_5
    const-wide v32, 0x401921fb54442d18L

    add-double v32, v32, v6

    cmpl-double v32, v32, v24

    if-lez v32, :cond_c

    const-wide v32, 0x401921fb54442d18L

    add-double v32, v32, v6

    cmpg-double v32, v32, v22

    if-gtz v32, :cond_c

    :cond_6
    const/4 v5, 0x1

    .line 1977
    .local v5, angleMatches:Z
    :goto_6
    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dist2(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v34

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dist2(FF)F

    move-result v34

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v36

    div-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    cmpl-double v32, v32, v34

    if-ltz v32, :cond_7

    .line 1982
    move v4, v11

    .line 1936
    .end local v5           #angleMatches:Z
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 1915
    .end local v6           #angleRad:D
    .end local v8           #eventX:F
    .end local v9           #eventY:F
    .end local v11           #i:I
    .end local v13           #limitX:F
    .end local v14           #limitY:F
    .end local v16           #moveEnough:Z
    .end local v18           #scale:F
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    .end local v22           #targetMaxRad:D
    .end local v24           #targetMinRad:D
    .end local v27           #touchRadius:F
    .end local v28           #tx:F
    .end local v29           #ty:F
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    goto/16 :goto_1

    .line 1917
    .restart local v8       #eventX:F
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    goto/16 :goto_2

    .line 1923
    .restart local v9       #eventY:F
    .restart local v27       #touchRadius:F
    .restart local v28       #tx:F
    .restart local v29       #ty:F
    :cond_a
    const/high16 v18, 0x3f80

    goto/16 :goto_3

    .line 1963
    .restart local v6       #angleRad:D
    .restart local v11       #i:I
    .restart local v13       #limitX:F
    .restart local v14       #limitY:F
    .restart local v18       #scale:F
    .restart local v19       #snapDistance2:F
    .restart local v20       #snapRadius:F
    .restart local v21       #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    .restart local v22       #targetMaxRad:D
    .restart local v24       #targetMinRad:D
    :cond_b
    int-to-double v0, v11

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3fe0

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4000

    mul-double v32, v32, v34

    const-wide v34, 0x400921fb54442d18L

    mul-double v32, v32, v34

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v24, v32, v34

    .line 1964
    int-to-double v0, v11

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3fe0

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4000

    mul-double v32, v32, v34

    const-wide v34, 0x400921fb54442d18L

    mul-double v32, v32, v34

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v22, v32, v34

    goto/16 :goto_5

    .line 1973
    .restart local v16       #moveEnough:Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 1987
    .end local v11           #i:I
    .end local v16           #moveEnough:Z
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    .end local v22           #targetMaxRad:D
    .end local v24           #targetMinRad:D
    :cond_d
    move/from16 v30, v13

    .line 1988
    move/from16 v31, v14

    .line 1914
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1991
    .end local v6           #angleRad:D
    .end local v8           #eventX:F
    .end local v9           #eventY:F
    .end local v13           #limitX:F
    .end local v14           #limitY:F
    .end local v18           #scale:F
    .end local v27           #touchRadius:F
    .end local v28           #tx:F
    .end local v29           #ty:F
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDragging:Z

    move/from16 v32, v0

    if-nez v32, :cond_f

    .line 2023
    :goto_7
    return-void

    .line 1995
    :cond_f
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v4, v0, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isShowed:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 1997
    const/16 v32, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->switchToState(IFF)V

    .line 1998
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->updateGlowPosition(FF)V

    .line 2005
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v4, :cond_11

    .line 2007
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    .line 2008
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    move/from16 v32, v0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 2009
    .restart local v21       #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    sget-object v32, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->hasState([I)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 2010
    sget-object v32, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 2014
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_10
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v4, v0, :cond_11

    .line 2015
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 2016
    .restart local v21       #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    sget-object v32, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->hasState([I)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 2017
    sget-object v32, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 2022
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_11
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    goto/16 :goto_7

    .line 2000
    :cond_12
    const/16 v32, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->switchToState(IFF)V

    .line 2002
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->updateGlowPosition(FF)V

    goto :goto_8
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1883
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDownStartX:F

    .line 1884
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDownStartY:F

    .line 1885
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->switchToState(IFF)V

    .line 1887
    return-void
.end method

.method private hideUnselected(I)V
    .locals 4
    .parameter "active"

    .prologue
    .line 1338
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1339
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1340
    if-eq v0, p1, :cond_0

    .line 1341
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1339
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1344
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .parameter "activeTarget"

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 1334
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->hideUnselected(I)V

    .line 1335
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->initConfig()V

    .line 787
    return-void
.end method

.method private initConfig()V
    .locals 3

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getConfig()Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;

    move-result-object v0

    .line 791
    .local v0, c:Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;->getDurationMin()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDurationMin:J

    .line 792
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;->getDurationMax()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDurationMax:J

    .line 793
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;->getTensionMin()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTensionMin:F

    .line 794
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;->getTensionMax()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTensionMax:F

    .line 795
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;->getTensionProportion()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTensionProportion:F

    .line 796
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .parameter "resourceId"

    .prologue
    .line 1462
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1463
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;>;"
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1465
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v3

    .line 1466
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v2

    .line 1467
    .local v2, maxHeight:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1468
    .local v0, count:I
    const/4 v4, 0x0

    .line 1469
    .local v4, target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1470
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    check-cast v4, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1471
    .restart local v4       #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1472
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1474
    :cond_0
    const/4 v4, 0x0

    .line 1476
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 1477
    :cond_1
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mMaxTargetWidth:I

    .line 1478
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mMaxTargetHeight:I

    .line 1479
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->requestLayout()V

    .line 1485
    :goto_1
    return-void

    .line 1482
    :cond_2
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->updateTargetPositions(FF)V

    goto :goto_1
.end method

.method private loadAnimation()V
    .locals 9

    .prologue
    .line 327
    const-string v6, "EicoGlowPadView"

    const-string v7, " loadAnimation start "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->assignDefaultsIfNeeded()V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->initNetNodeProxyList()V

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10802aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10802a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPointLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 340
    .local v5, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 341
    .local v2, id:I
    const/4 v3, 0x0

    .line 343
    .local v3, p:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v6, 0x5

    if-gt v1, v6, :cond_0

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eico_i"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 345
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 346
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v7, 0x96

    invoke-virtual {v6, v3, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 351
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v6, p0, v7, p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;

    .line 394
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 396
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setBatteryViewVisiblity(I)V

    .line 397
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 398
    const/4 v1, 0x1

    :goto_1
    const/16 v6, 0xe

    if-gt v1, v6, :cond_1

    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eico_p"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 400
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 401
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v7, 0x28

    invoke-virtual {v6, v3, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 403
    :cond_1
    const-string v6, "eico_p15"

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 405
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 406
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v3, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 407
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 409
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$5;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v6, p0, v7, p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAnimatDrawableCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;

    .line 451
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAnimatDrawableCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 453
    const/4 v1, 0x1

    :goto_2
    const/16 v6, 0xa

    if-gt v1, v6, :cond_2

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eico_e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 455
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 456
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v7, 0xc

    invoke-virtual {v6, v3, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 458
    :cond_2
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapedLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 459
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 461
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v6, p0, v7, p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapAnimateCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 513
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #p:Landroid/graphics/drawable/Drawable;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #res:Landroid/content/res/Resources;
    :goto_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isLoadComplete:Z

    .line 514
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAsynchTaskHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "EicoGlowPadView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " NullPointerException : e : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 508
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "EicoGlowPadView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Exception : e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1445
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1446
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1447
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 1448
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1450
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1451
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 1452
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    const v8, 0x1080291

    invoke-direct {v5, v4, v7, v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    .line 1455
    .local v5, target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1452
    .end local v5           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 1457
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1458
    return-object v2
.end method

.method private makeAnimator(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;
    .locals 17
    .parameter "netNodeProxy"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "isOver"
    .parameter "inDuration"

    .prologue
    .line 960
    new-instance v9, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v9, v0, v1}, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;-><init>(FF)V

    .line 961
    .local v9, startValue:Lcom/android/internal/policy/impl/keyguard/NetNodeValue;
    const/4 v11, 0x0

    iput v11, v9, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    .line 963
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v4, v0, v1}, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;-><init>(FF)V

    .line 964
    .local v4, endValue:Lcom/android/internal/policy/impl/keyguard/NetNodeValue;
    const/high16 v11, 0x3f80

    iput v11, v4, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    .line 966
    const-string v11, "NetNodeValue"

    new-instance v12, Lcom/android/internal/policy/impl/keyguard/NetNodeLocus;

    invoke-direct {v12}, Lcom/android/internal/policy/impl/keyguard/NetNodeLocus;-><init>()V

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 969
    .local v8, ret:Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 971
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    .line 973
    .local v6, rand:D
    const-wide/16 v11, 0x0

    cmp-long v11, p7, v11

    if-gez v11, :cond_0

    .line 974
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDurationMin:J

    long-to-double v11, v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDurationMax:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDurationMin:J

    sub-long/2addr v13, v15

    long-to-double v13, v13

    mul-double/2addr v13, v6

    add-double/2addr v11, v13

    double-to-long v2, v11

    .line 976
    .local v2, duration:J
    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 981
    .end local v2           #duration:J
    :goto_0
    if-eqz p6, :cond_1

    .line 982
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTensionMin:F

    float-to-double v11, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTensionMax:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTensionMin:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    const-wide/high16 v15, 0x3ff0

    sub-double/2addr v15, v6

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    double-to-float v10, v11

    .line 985
    .local v10, tension:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTensionProportion:F

    .line 987
    .local v5, proportion:F
    new-instance v11, Lcom/android/internal/policy/impl/keyguard/NetViewInterpolator;

    invoke-direct {v11, v10, v5}, Lcom/android/internal/policy/impl/keyguard/NetViewInterpolator;-><init>(FF)V

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 992
    .end local v5           #proportion:F
    .end local v10           #tension:F
    :goto_1
    return-object v8

    .line 978
    :cond_0
    move-wide/from16 v0, p7

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 989
    :cond_1
    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method private makeLines(I)V
    .locals 6
    .parameter "eicoCount_line"

    .prologue
    .line 2180
    const/4 v2, 0x0

    .line 2181
    .local v2, line:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    const v1, 0x1080297

    .line 2182
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2183
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 2184
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .end local v2           #line:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-direct {v2, v3, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 2185
    .restart local v2       #line:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "line_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setName(Ljava/lang/String;)V

    .line 2186
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2188
    :cond_0
    const/4 v2, 0x0

    .line 2189
    return-void
.end method

.method private makeScaleAnimator(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;
    .locals 7
    .parameter "netNodeProxy"
    .parameter "startScale"
    .parameter "endScale"
    .parameter "inDuration"

    .prologue
    .line 940
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    invoke-direct {v2}, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;-><init>()V

    .line 941
    .local v2, startValue:Lcom/android/internal/policy/impl/keyguard/NetNodeValue;
    iput p2, v2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->scale:F

    .line 942
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v3

    iput v3, v2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->x:F

    .line 943
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v3

    iput v3, v2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->y:F

    .line 944
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;-><init>()V

    .line 945
    .local v0, endValue:Lcom/android/internal/policy/impl/keyguard/NetNodeValue;
    iput p3, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->scale:F

    .line 946
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v3

    iput v3, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->x:F

    .line 947
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v3

    iput v3, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->y:F

    .line 949
    const-string v3, "NetNodeValue"

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/NetNodeLocus;

    invoke-direct {v4}, Lcom/android/internal/policy/impl/keyguard/NetNodeLocus;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {p1, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 951
    .local v1, ret:Landroid/animation/ValueAnimator;
    invoke-virtual {v1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 952
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 953
    return-object v1
.end method

.method private makeShowAnimator(Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;II)Landroid/animation/Animator;
    .locals 15
    .parameter "v"
    .parameter "index"
    .parameter "max"

    .prologue
    .line 884
    const/4 v3, 0x0

    .line 885
    .local v3, x0:F
    const/4 v4, 0x0

    .line 886
    .local v4, y0:F
    const/4 v5, 0x0

    .line 887
    .local v5, x1:F
    const/4 v6, 0x0

    .line 889
    .local v6, y1:F
    move/from16 v0, p2

    int-to-double v7, v0

    const-wide v13, -0x3fe6de04abbbd2e8L

    mul-double/2addr v7, v13

    move/from16 v0, p3

    int-to-double v13, v0

    div-double v11, v7, v13

    .line 890
    .local v11, rotation:D
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    .line 892
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    const-wide v13, 0x4004f1a6c638d03fL

    sub-double v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    double-to-float v5, v7

    .line 896
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    const-wide v13, 0x4004f1a6c638d03fL

    sub-double v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    double-to-float v6, v7

    .line 899
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    const/4 v7, 0x4

    if-ne v1, v7, :cond_1

    .line 901
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    double-to-float v5, v7

    .line 905
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    double-to-float v6, v7

    .line 908
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    const/4 v7, 0x5

    if-ne v1, v7, :cond_2

    .line 910
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    const-wide v13, 0x3fd41b2f769cf0e0L

    add-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    double-to-float v5, v7

    .line 914
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    const-wide v13, 0x3fd41b2f769cf0e0L

    add-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    double-to-float v6, v7

    .line 917
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    .line 919
    .local v2, netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeAnimator(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 922
    .local v10, ret:Landroid/animation/ValueAnimator;
    return-object v10
.end method

.method private makeTargetSwingAnimator(Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;FFJ)Landroid/animation/ValueAnimator;
    .locals 4
    .parameter "targetDrawable"
    .parameter "startDegree"
    .parameter "endDegree"
    .parameter "inDuration"

    .prologue
    .line 929
    const-string v1, "Rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 931
    .local v0, ret:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 932
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const v2, 0x3f8a3d71

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 934
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 935
    return-object v0
.end method

.method private playAnimation(Z)V
    .locals 4
    .parameter "isResume"

    .prologue
    const/4 v3, 0x0

    .line 1492
    const-string v0, "EicoGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ping in, isResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BatteryMonitor.mBatteryFlagEico : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mBatteryFlagEico:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    if-eqz p1, :cond_1

    .line 1496
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 1497
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->triggerUnlock()V

    .line 1500
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mBatteryFlagEico:Z

    if-eqz v0, :cond_2

    .line 1501
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setBatteryViewVisiblity(I)V

    .line 1502
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 1508
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1510
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->playShakeLock()V

    .line 1512
    :cond_1
    return-void

    .line 1505
    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setBatteryViewVisiblity(I)V

    .line 1506
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private playIndicatorAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 1121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorTotalTime:J

    .line 1122
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 1123
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isIndicatorAnimRunning:Z

    .line 1124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1125
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isAnimLoadCmplete:Z

    .line 1127
    const-string v0, "EicoGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playIndicatorAnim start, isIndicatorAnimRunning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isIndicatorAnimRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playSnapAnimation()V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapAnimateCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1180
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setBatteryViewVisiblity(I)V

    .line 1181
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 1182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapedAnimateTotalTime:J

    .line 1183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 1184
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1185
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dispatchTriggerEvent(I)V

    .line 1187
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 1085
    const/4 v0, 0x0

    .line 1086
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1087
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1096
    move v0, v1

    .line 1098
    :goto_0
    return v0

    .line 1089
    :sswitch_0
    move v0, p2

    .line 1090
    goto :goto_0

    .line 1092
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1093
    goto :goto_0

    .line 1087
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setBatteryViewVisiblity(I)V
    .locals 5
    .parameter "visibleFlag"

    .prologue
    .line 2454
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mBatteryView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 2455
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2456
    .local v1, vv:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2457
    const v2, 0x1020297

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mBatteryView:Landroid/view/View;

    .line 2460
    .end local v1           #vv:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mBatteryView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2461
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mBatteryView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2467
    :cond_1
    :goto_0
    return-void

    .line 2463
    :catch_0
    move-exception v0

    .line 2465
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "EicoGlowPadView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBatteryViewVisiblity, NullPointerException e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 2030
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 2034
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGrabbedState:I

    .line 2035
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 2036
    if-nez p1, :cond_1

    .line 2037
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 2043
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 2046
    :cond_0
    return-void

    .line 2040
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setLineView(FFFFLcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;)V
    .locals 10
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "line"

    .prologue
    .line 1032
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->calcRotation(FFFF)F

    move-result v2

    .line 1033
    .local v2, rotation:F
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->calcLength(FFFF)I

    move-result v0

    .line 1035
    .local v0, length:I
    const/high16 v6, 0x4334

    mul-float/2addr v6, v2

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L

    div-double/2addr v6, v8

    double-to-float v3, v6

    .line 1036
    .local v3, rotationDeg:F
    add-float v6, p1, p3

    const/high16 v7, 0x4000

    div-float v4, v6, v7

    .line 1038
    .local v4, x:F
    add-float v6, p2, p4

    const/high16 v7, 0x4000

    div-float v5, v6, v7

    .line 1040
    .local v5, y:F
    invoke-virtual {p5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_0

    invoke-virtual {p5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v6

    cmpl-float v6, v6, v5

    if-nez v6, :cond_0

    invoke-virtual {p5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getRotation()F

    move-result v6

    cmpl-float v6, v6, v3

    if-nez v6, :cond_0

    .line 1052
    :goto_0
    return-void

    .line 1045
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    neg-int v6, v0

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    div-int/lit8 v8, v0, 0x2

    const/4 v9, 0x3

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1047
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p5, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1048
    invoke-virtual {p5, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setRotation(F)V

    .line 1050
    invoke-virtual {p5, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setX(F)V

    .line 1051
    invoke-virtual {p5, v5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setY(F)V

    goto :goto_0
.end method

.method private showTargets(Z)V
    .locals 12
    .parameter "animate"

    .prologue
    const/4 v11, 0x1

    .line 1411
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->stop()V

    .line 1413
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 1414
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 1416
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    if-nez v5, :cond_1

    .line 1417
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getShowAnimator()Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    .line 1420
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1421
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1422
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1423
    .local v4, target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual {v4, v11}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setEnabled(Z)V

    .line 1424
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 1421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1427
    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 1429
    .local v1, interpolator:Landroid/animation/TimeInterpolator;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1430
    .local v3, lineLength:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    .line 1431
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1432
    .restart local v4       #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual {v4, v11}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setEnabled(Z)V

    .line 1433
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 1434
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    const-wide/16 v6, 0xc8

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    aput-object v1, v8, v11

    const/4 v9, 0x2

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/16 v10, 0x14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1430
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1440
    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->start()V

    .line 1441
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 1442
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 2346
    mul-float v0, p1, p1

    return v0
.end method

.method private stopIndicatorAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1159
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isIndicatorAnimRunning:Z

    .line 1160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorTotalTime:J

    .line 1162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    goto :goto_0
.end method

.method private stopSnapAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1190
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isSnaped:Z

    .line 1191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapedAnimateTotalTime:J

    .line 1192
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1198
    :cond_0
    return-void
.end method

.method private switchToState(IFF)V
    .locals 4
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 1201
    packed-switch p1, :pswitch_data_0

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1203
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->deactivateTargets()V

    .line 1204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1205
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    goto :goto_0

    .line 1209
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->stopShakeLock()V

    goto :goto_0

    .line 1214
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1215
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->deactivateTargets()V

    .line 1216
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->showTargets(Z)V

    .line 1217
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setGrabbedState(I)V

    goto :goto_0

    .line 1221
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1226
    const-wide/16 v0, 0x15e

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->attract(FFJ)V

    goto :goto_0

    .line 1230
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1231
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    goto :goto_0

    .line 1239
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->doFinish()V

    goto :goto_0

    .line 1201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private triggerUnlock()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 780
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dispatchOnFinishFinalAnimation()V

    .line 781
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dispatchTriggerEvent(I)V

    .line 782
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setGrabbedState(I)V

    .line 783
    return-void
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 2049
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 2050
    .local v0, tx:F
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 2051
    .local v1, ty:F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 2052
    const-string v3, "EicoGlowPadView"

    const-string v4, "trySwitchToFirstTouchState(), ** Handle Hit in"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->switchToState(IFF)V

    .line 2054
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->updateGlowPosition(FF)V

    .line 2055
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDragging:Z

    .line 2063
    :goto_0
    return v2

    .line 2059
    :cond_0
    const-string v2, "EicoGlowPadView"

    const-string v3, "trySwitchToFirstTouchState(), ** Handle HIT out"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 2061
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 2063
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateGlowPosition(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setX(F)V

    .line 1860
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setY(F)V

    .line 1861
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 10
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 2163
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 2164
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2165
    .local v3, size:I
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v3

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 2166
    .local v0, alpha:F
    const/4 v4, 0x0

    .line 2167
    .local v4, targetIcon:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2168
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #targetIcon:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    check-cast v4, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 2169
    .restart local v4       #targetIcon:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 2170
    .local v1, angle:F
    invoke-virtual {v4, p1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setPositionX(F)V

    .line 2171
    invoke-virtual {v4, p2}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setPositionY(F)V

    .line 2172
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setX(F)V

    .line 2173
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setY(F)V

    .line 2167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2175
    .end local v1           #angle:F
    :cond_0
    const/4 v4, 0x0

    .line 2176
    return-void
.end method


# virtual methods
.method public attract(FFJ)V
    .locals 31
    .parameter "tx"
    .parameter "ty"
    .parameter "duration"

    .prologue
    .line 1637
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isShowed:Z

    if-nez v3, :cond_1

    .line 1745
    :cond_0
    :goto_0
    return-void

    .line 1639
    :cond_1
    const/16 v25, 0x0

    .line 1640
    .local v25, snapRadius:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1642
    .local v21, max:I
    if-lez v21, :cond_0

    .line 1646
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getIndex(FF)I

    move-result v19

    .line 1647
    .local v19, index:I
    rem-int v19, v19, v21

    .line 1649
    if-ltz v19, :cond_0

    .line 1653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1657
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    .local v15, animList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeUnattract(J)Landroid/animation/AnimatorSet;

    move-result-object v26

    .line 1661
    .local v26, unattract:Landroid/animation/Animator;
    if-eqz v26, :cond_2

    .line 1662
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    const/4 v9, 0x3

    if-ne v3, v9, :cond_3

    .line 1664
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mInnerRadius:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    add-float v25, v3, v9

    .line 1666
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    const/4 v9, 0x4

    if-ne v3, v9, :cond_4

    .line 1667
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mInnerRadius:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    add-float v25, v3, v9

    .line 1669
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    const/4 v9, 0x5

    if-ne v3, v9, :cond_5

    .line 1670
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mInnerRadius:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x5

    int-to-float v9, v9

    add-float v25, v3, v9

    .line 1676
    :cond_5
    mul-float v24, v25, v25

    .line 1678
    .local v24, snapDistance2:F
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dist2(FF)F

    move-result v3

    cmpg-float v3, v3, v24

    if-gez v3, :cond_6

    .line 1679
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1680
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1681
    .local v16, animatorSet:Landroid/animation/AnimatorSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1682
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1687
    .end local v16           #animatorSet:Landroid/animation/AnimatorSet;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    .line 1689
    .local v4, netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1691
    const/16 v27, 0x0

    .line 1692
    .local v27, x0:F
    const/16 v28, 0x0

    .line 1694
    .local v28, y0:F
    const/4 v5, 0x0

    .line 1695
    .local v5, x:F
    const/4 v6, 0x0

    .line 1696
    .local v6, y:F
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v5

    .line 1697
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v6

    .line 1699
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->calcRotation(FFFF)F

    move-result v22

    .line 1702
    .local v22, r2:F
    move/from16 v0, v27

    float-to-double v11, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    float-to-double v13, v3

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    mul-double v13, v13, v29

    const-wide/high16 v29, 0x4000

    div-double v13, v13, v29

    add-double/2addr v11, v13

    double-to-float v7, v11

    .line 1703
    .local v7, x1:F
    move/from16 v0, v28

    float-to-double v11, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    float-to-double v13, v3

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v13, v13, v29

    const-wide/high16 v29, 0x4000

    div-double v13, v13, v29

    add-double/2addr v11, v13

    double-to-float v8, v11

    .line 1705
    .local v8, y1:F
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v10, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeAnimator(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;

    move-result-object v17

    .line 1708
    .local v17, attract:Landroid/animation/Animator;
    if-eqz v17, :cond_7

    .line 1709
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1714
    .local v20, len:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 1715
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 1716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    .line 1717
    .local v10, tmpNode:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    const/high16 v11, 0x3f80

    const v12, 0x3ee66666

    move-object/from16 v9, p0

    move-wide/from16 v13, p3

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeScaleAnimator(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;

    move-result-object v23

    .line 1718
    .local v23, ret:Landroid/animation/Animator;
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    .end local v10           #tmpNode:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    .end local v23           #ret:Landroid/animation/Animator;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1723
    :cond_9
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1725
    .restart local v16       #animatorSet:Landroid/animation/AnimatorSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1726
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1744
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public changeNodeValue(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;Lcom/android/internal/policy/impl/keyguard/NetNodeValue;)V
    .locals 1
    .parameter "nodeProxy"
    .parameter "newValue"

    .prologue
    .line 996
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getIndex()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->changeLine(ILcom/android/internal/policy/impl/keyguard/NetNodeValue;)V

    .line 997
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2262
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2263
    return-void
.end method

.method public getConfig()Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mConfig:Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorDefaultConfig;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorDefaultConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mConfig:Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mConfig:Lcom/android/internal/policy/impl/keyguard/NetViewAnimatorConfig;

    return-object v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 2386
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 2387
    .local v0, drawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0
.end method

.method public getShowAnimator()Landroid/animation/AnimatorSet;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f80

    .line 819
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 820
    .local v4, ret:Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v1, animList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isShowed:Z

    .line 823
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 824
    .local v3, max:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 825
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v5

    .line 826
    .local v5, v:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 827
    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setEnabled(Z)V

    .line 828
    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 829
    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setScaleX(F)V

    .line 830
    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setScaleY(F)V

    .line 831
    invoke-direct {p0, v5, v2, v3}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeShowAnimator(Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;II)Landroid/animation/Animator;

    move-result-object v0

    .line 833
    .local v0, anim:Landroid/animation/Animator;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 836
    .end local v0           #anim:Landroid/animation/Animator;
    .end local v5           #v:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_0
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 837
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 878
    return-object v4
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 2370
    const/4 v0, 0x0

    return v0
.end method

.method public getisSnaped()Z
    .locals 1

    .prologue
    .line 2470
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isSnaped:Z

    return v0
.end method

.method public gone(IJJ)Landroid/animation/AnimatorSet;
    .locals 24
    .parameter "index"
    .parameter "duration"
    .parameter "startDelay"

    .prologue
    .line 1774
    const/16 v19, 0x0

    .line 1775
    .local v19, goneLoop:Landroid/animation/Animator;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIsToGone:Z

    .line 1776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1777
    .local v21, max:I
    if-lez v21, :cond_1

    .line 1778
    rem-int p1, p1, v21

    .line 1783
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1785
    .local v12, animList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v22

    .line 1787
    .local v22, v:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v17

    .line 1788
    .local v17, endX:F
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v18

    .line 1790
    .local v18, endY:F
    new-instance v20, Lcom/android/internal/policy/impl/keyguard/LoopIndex;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;-><init>(I)V

    .line 1791
    .local v20, loopIndex:Lcom/android/internal/policy/impl/keyguard/LoopIndex;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->setCurrent(I)V

    .line 1792
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->current()I

    move-result v16

    .line 1793
    .local v16, endIndex:I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->inc()I

    .line 1795
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->current()I

    move-result v3

    move/from16 v0, v16

    if-eq v3, v0, :cond_4

    .line 1796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->current()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    .line 1797
    .local v4, netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v23

    .line 1799
    .local v23, vloop:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v5

    .line 1800
    .local v5, x0:F
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v6

    .line 1802
    .local v6, y0:F
    move/from16 v7, v17

    .line 1803
    .local v7, x1:F
    move/from16 v8, v18

    .line 1804
    .local v8, y1:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->eicoCount:I

    const/4 v9, 0x3

    if-ne v3, v9, :cond_2

    .line 1805
    const/high16 v3, 0x4080

    mul-float/2addr v3, v5

    const/high16 v9, 0x40a0

    div-float v5, v3, v9

    const/high16 v3, 0x4080

    mul-float/2addr v3, v6

    const/high16 v9, 0x40a0

    div-float v6, v3, v9

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeAnimator(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;

    .end local v5           #x0:F
    .end local v6           #y0:F
    move-result-object v19

    .line 1818
    :cond_0
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->inc()I

    goto :goto_0

    .line 1780
    .end local v4           #netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    .end local v7           #x1:F
    .end local v8           #y1:F
    .end local v12           #animList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v16           #endIndex:I
    .end local v17           #endX:F
    .end local v18           #endY:F
    .end local v20           #loopIndex:Lcom/android/internal/policy/impl/keyguard/LoopIndex;
    .end local v22           #v:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    .end local v23           #vloop:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_1
    const/4 v13, 0x0

    .line 1849
    :goto_2
    return-object v13

    .line 1808
    .restart local v4       #netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    .restart local v5       #x0:F
    .restart local v6       #y0:F
    .restart local v7       #x1:F
    .restart local v8       #y1:F
    .restart local v12       #animList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v16       #endIndex:I
    .restart local v17       #endX:F
    .restart local v18       #endY:F
    .restart local v20       #loopIndex:Lcom/android/internal/policy/impl/keyguard/LoopIndex;
    .restart local v22       #v:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    .restart local v23       #vloop:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_2
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeAnimator(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;

    move-result-object v19

    .line 1810
    if-eqz v19, :cond_0

    .line 1811
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/LoopIndex;->current()I

    move-result v3

    sub-int v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v14, v3

    .line 1812
    .local v14, c:D
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v9, 0x4000

    div-float/2addr v3, v9

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    cmpl-double v3, v14, v9

    if-eqz v3, :cond_3

    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v9, 0x4000

    div-float/2addr v3, v9

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    cmpl-double v3, v14, v9

    if-nez v3, :cond_0

    .line 1814
    :cond_3
    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_1

    .line 1823
    .end local v4           #netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    .end local v5           #x0:F
    .end local v6           #y0:F
    .end local v7           #x1:F
    .end local v8           #y1:F
    .end local v14           #c:D
    .end local v23           #vloop:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_4
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1825
    .local v13, animatorSet:Landroid/animation/AnimatorSet;
    invoke-virtual {v13, v12}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1827
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V

    invoke-virtual {v13, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1847
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isShowed:Z

    .line 1848
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2
.end method

.method public hideRocketAnimation()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1133
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 1136
    :cond_0
    return-void
.end method

.method public hideTargets(ZZ)V
    .locals 14
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 1377
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->cancel()V

    .line 1381
    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    .line 1382
    .local v1, duration:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    .line 1384
    .local v0, delay:I
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v7, 0x3f80

    .line 1386
    .local v7, targetScale:F
    :goto_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1387
    .local v4, length:I
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 1388
    .local v3, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v4, :cond_3

    .line 1389
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1390
    .local v6, target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 1391
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    int-to-long v9, v1

    const/16 v11, 0xc

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ease"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    const-string v13, "alpha"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "scaleX"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "scaleY"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "delay"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string v13, "onUpdate"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v13, v11, v12

    invoke-static {v6, v9, v10, v11}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1388
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1381
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v4           #length:I
    .end local v6           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    .end local v7           #targetScale:F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1382
    .restart local v1       #duration:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1384
    .restart local v0       #delay:I
    :cond_2
    const v7, 0x3f4ccccd

    goto :goto_2

    .line 1398
    .restart local v2       #i:I
    .restart local v3       #interpolator:Landroid/animation/TimeInterpolator;
    .restart local v4       #length:I
    .restart local v7       #targetScale:F
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1399
    .local v5, lineLength:I
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_4

    .line 1400
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1401
    .restart local v6       #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 1402
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    int-to-long v9, v1

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ease"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    const-string v13, "alpha"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "delay"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "onUpdate"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v13, v11, v12

    invoke-static {v6, v9, v10, v11}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1399
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1407
    .end local v6           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->start()V

    .line 1408
    return-void
.end method

.method public hideTargetsImmediate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1349
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->cancel()V

    .line 1350
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1351
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1352
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1353
    .local v3, target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 1354
    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1355
    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setEnabled(Z)V

    .line 1351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1357
    .end local v3           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1358
    .local v2, lineLength:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1359
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1360
    .restart local v3       #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 1361
    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1362
    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setEnabled(Z)V

    .line 1358
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1365
    .end local v3           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_1
    return-void
.end method

.method public initNetNodeProxyList()V
    .locals 5

    .prologue
    .line 805
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 807
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 808
    .local v2, size:I
    const/4 v1, 0x0

    .line 809
    .local v1, netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 810
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    .end local v1           #netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mNotifyChange:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;

    invoke-direct {v1, v3, v0, v4}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;ILcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;)V

    .line 812
    .restart local v1       #netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    :cond_0
    const/4 v1, 0x0

    .line 815
    return-void
.end method

.method public makeUnattract(J)Landroid/animation/AnimatorSet;
    .locals 14
    .parameter "duration"

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    const/4 v12, 0x0

    .line 1768
    :goto_0
    return-object v12

    .line 1750
    :cond_0
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1751
    .local v12, ret:Landroid/animation/AnimatorSet;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1753
    .local v10, animList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1754
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1755
    .local v11, index:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1757
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    .line 1758
    .local v1, netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v13

    .line 1759
    .local v13, v:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v2

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->x:F

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    iget v5, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->y:F

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeAnimator(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 1763
    .local v9, anim:Landroid/animation/Animator;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1766
    .end local v1           #netNodeProxy:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    .end local v9           #anim:Landroid/animation/Animator;
    .end local v11           #index:I
    .end local v13           #v:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_1
    invoke-virtual {v12, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 2193
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 2195
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->drawLines(Landroid/graphics/Canvas;)V

    .line 2197
    const/4 v5, 0x0

    .line 2198
    .local v5, target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2199
    .local v4, ntargets:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 2200
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    check-cast v5, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 2201
    .restart local v5       #target:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    if-eqz v5, :cond_0

    .line 2202
    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2199
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2205
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v7, p1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2207
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v6

    .line 2208
    .local v6, width:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v2

    .line 2209
    .local v2, height:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mBatteryFlagEico:Z

    if-nez v7, :cond_2

    .line 2210
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v8, v8

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v9, v9

    div-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v10, v10

    div-int/lit8 v11, v6, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v11, v11

    div-int/lit8 v12, v2, 0x2

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    .line 2215
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/AnimationDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2218
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2219
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v11, v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    .line 2224
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/AnimationDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2226
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v11, v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2232
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2235
    :cond_3
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isSnaped:Z

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 2236
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v8, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v7

    float-to-int v7, v7

    add-int v0, v8, v7

    .line 2238
    .local v0, centerX:I
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v8, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mActiveTarget:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int v1, v8, v7

    .line 2240
    .local v1, centerY:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_4

    .line 2241
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v0, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v1, v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v0

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    .line 2246
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/AnimationDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2247
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPointLockDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 2248
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPointLockDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x7

    sub-int v8, v0, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x7

    sub-int v9, v1, v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x7

    add-int/2addr v10, v0

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x7

    add-int/2addr v11, v1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2253
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPointLockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2257
    .end local v0           #centerX:I
    .end local v1           #centerY:I
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2116
    sub-int v8, p4, p2

    .line 2117
    .local v8, width:I
    sub-int v0, p5, p3

    .line 2121
    .local v0, height:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    mul-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2123
    .local v6, placementWidth:F
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRadius:F

    mul-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2125
    .local v5, placementHeight:F
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHorizontalInset:I

    int-to-float v9, v9

    int-to-float v10, v8

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mMaxTargetWidth:I

    int-to-float v11, v11

    add-float/2addr v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v3, v9, v10

    .line 2127
    .local v3, newWaveCenterX:F
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mVerticalInset:I

    int-to-float v9, v9

    int-to-float v10, v0

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mMaxTargetHeight:I

    int-to-float v11, v11

    add-float/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v4, v9, v10

    .line 2130
    .local v4, newWaveCenterY:F
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mInitialLayout:Z

    if-eqz v9, :cond_0

    .line 2132
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->hideTargets(ZZ)V

    .line 2133
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mInitialLayout:Z

    .line 2136
    :cond_0
    div-int/lit8 v9, v8, 0x2

    int-to-float v3, v9

    .line 2137
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setPositionX(F)V

    .line 2138
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setPositionY(F)V

    .line 2141
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setPositionX(F)V

    .line 2142
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    invoke-virtual {v9, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setPositionY(F)V

    .line 2143
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setX(F)V

    .line 2144
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setY(F)V

    .line 2146
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2147
    .local v7, size:I
    const/4 v2, 0x0

    .line 2148
    .local v2, line:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 2149
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #line:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    check-cast v2, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 2150
    .restart local v2       #line:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setPositionX(F)V

    .line 2151
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setPositionY(F)V

    .line 2148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2153
    :cond_1
    const/4 v2, 0x0

    .line 2155
    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->updateTargetPositions(FF)V

    .line 2157
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterX:F

    .line 2158
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mWaveCenterY:F

    .line 2159
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 1104
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 1105
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 1106
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 1107
    .local v0, computedHeight:I
    sub-int v4, v1, v3

    sub-int v5, v0, v2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->computeInsets(II)V

    .line 1109
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setMeasuredDimension(II)V

    .line 1110
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1530
    const-string v3, "EicoGlowPadView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onTouchEvent(), mIsToGone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIsToGone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAnimLoadCmplete : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isAnimLoadCmplete:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIsToGone:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isAnimLoadCmplete:Z

    if-nez v3, :cond_1

    .line 1586
    :cond_0
    :goto_0
    return v2

    .line 1535
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1536
    .local v0, action:I
    const/4 v1, 0x0

    .line 1538
    .local v1, handled:Z
    const-string v3, "EicoGlowPadView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** onTouchEvent ***  action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    packed-switch v0, :pswitch_data_0

    .line 1581
    const-string v3, "EicoGlowPadView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** ACTION_UNKNOWN action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPointX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPointY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ***"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->invalidate()V

    .line 1586
    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1541
    :pswitch_0
    const-string v3, "EicoGlowPadView"

    const-string v4, "Eico----DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDownStartX:F

    .line 1543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDownStartY:F

    .line 1544
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 1546
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mDragging:Z

    if-eqz v3, :cond_2

    .line 1547
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPressed:Z

    .line 1548
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1549
    const/4 v1, 0x1

    goto :goto_1

    .line 1554
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPressed:Z

    if-eqz v3, :cond_0

    .line 1557
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setBatteryViewVisiblity(I)V

    .line 1558
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1559
    const/4 v1, 0x1

    .line 1560
    goto :goto_1

    .line 1563
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPressed:Z

    if-eqz v3, :cond_0

    .line 1566
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPressed:Z

    .line 1567
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1568
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 1569
    const/4 v1, 0x1

    .line 1570
    goto :goto_1

    .line 1573
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPressed:Z

    if-eqz v3, :cond_0

    .line 1576
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPressed:Z

    .line 1577
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 1578
    const/4 v1, 0x1

    .line 1579
    goto :goto_1

    .line 1539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 2

    .prologue
    .line 1488
    const-string v0, "EicoGlowPadView"

    const-string v1, "****************** ping public ********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    return-void
.end method

.method public playShakeLock()V
    .locals 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1143
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mAnimatDrawableCallback:Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 1147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mStartShockTotalTime:J

    .line 1148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isRockAnimRunning:Z

    .line 1150
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1151
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->playIndicatorAnim()V

    goto :goto_0
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 1
    .parameter "component"
    .parameter "name"
    .parameter "existingResId"

    .prologue
    .line 2378
    const/4 v0, 0x1

    return v0
.end method

.method public reset(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 1522
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mPressed:Z

    .line 1523
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->stop()V

    .line 1524
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->hideTargets(ZZ)V

    .line 1525
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/Tweener;->reset()V

    .line 1526
    return-void
.end method

.method public resourceRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2391
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isLoadComplete:Z

    .line 2392
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    if-eqz v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->stop()V

    .line 2396
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2401
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    .line 2402
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isRockAnimRunning:Z

    .line 2403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2404
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2407
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 2408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2409
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    .line 2412
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 2413
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 2416
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_5

    .line 2417
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2418
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2421
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 2422
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2423
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    .line 2426
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 2427
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2428
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    .line 2431
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 2432
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2433
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    .line 2435
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_9

    .line 2436
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isIndicatorAnimRunning:Z

    .line 2437
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2438
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2440
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_a

    .line 2441
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2442
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    .line 2444
    :cond_a
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2445
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 1067
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->start()V

    .line 1068
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 0
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 2374
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2382
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadViewBase$OnTriggerListener;

    .line 2383
    return-void
.end method

.method public setTouchRecepient(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 2367
    return-void
.end method

.method public stopShakeLock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mStartShockTotalTime:J

    .line 1170
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isRockAnimRunning:Z

    .line 1171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 1173
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->stopIndicatorAnim()V

    .line 1174
    return-void
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 1061
    return-void
.end method

.method public unattract(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1853
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeUnattract(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1854
    .local v0, unattract:Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 1855
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1856
    :cond_0
    return-void
.end method
