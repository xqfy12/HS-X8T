.class public Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;
.super Lcom/android/internal/widget/multiwaveview/GlowPadViewBase;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;
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


# instance fields
.field isIndicatorAnimRunning:Z

.field isRockAnimRunning:Z

.field private isShowed:Z

.field private isSnaped:Z

.field private mActiveTarget:I

.field mAnimatDrawableCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

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

.field private mConfig:Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;

.field private mDownStartX:F

.field private mDownStartY:F

.field private mDragging:Z

.field private mDurationMax:J

.field private mDurationMin:J

.field private mGlowRadius:F

.field private mGoneAnimations:Landroid/animation/AnimatorSet;

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

.field private mHorizontalInset:I

.field mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field mIndicatorCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

.field mIndicatorHandle:Landroid/os/Handler;

.field mIndicatorTotalTime:J

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mIsToGone:Z

.field private mLineViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field mLockShakeHandle:Landroid/os/Handler;

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNotifyChange:Lcom/android/internal/widget/multiwaveview/NetNodeProxy$NotifyChange;

.field private mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

.field private mPressed:Z

.field mSnapAnimateCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

.field mSnapHandle:Landroid/os/Handler;

.field private mSnapMargin:F

.field mSnapedAnimateTotalTime:J

.field private mSnapedLastDrawable:Landroid/graphics/drawable/Drawable;

.field mStarUpdateTime:J

.field mStartShockTotalTime:J

.field private mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

.field private mTargetAnimator:Landroid/animation/Animator;

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTensionMax:F

.field private mTensionMin:F

.field private mTensionProportion:F

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mViewPorxyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/NetNodeProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mViewXYPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/NetNodeValue;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveCenterX:F

.field private mWaveCenterY:F

.field rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    const-string v0, "EicoGlowPadView"

    const-string v1, "---EicoGlowPadView(Context context)-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isShowed:Z

    .line 88
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    .line 89
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;

    .line 90
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    .line 92
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 94
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    .line 96
    new-instance v9, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$1;)V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    .line 103
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    .line 121
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    .line 122
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapMargin:F

    .line 126
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    .line 127
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    .line 166
    new-instance v9, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$1;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$1;-><init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 174
    const/16 v9, 0x30

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGravity:I

    .line 175
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mInitialLayout:Z

    .line 179
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mPressed:Z

    .line 181
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mConfig:Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;

    .line 185
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isIndicatorAnimRunning:Z

    .line 188
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorTotalTime:J

    .line 192
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isRockAnimRunning:Z

    .line 195
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mStartShockTotalTime:J

    .line 201
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapedAnimateTotalTime:J

    .line 202
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isSnaped:Z

    .line 204
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mStarUpdateTime:J

    .line 205
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIsToGone:Z

    .line 208
    new-instance v9, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$2;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$2;-><init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mNotifyChange:Lcom/android/internal/widget/multiwaveview/NetNodeProxy$NotifyChange;

    .line 1458
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDownStartX:F

    .line 1459
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDownStartY:F

    .line 227
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->init()V

    .line 228
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIsToGone:Z

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 231
    .local v8, res:Landroid/content/res/Resources;
    sget-object v9, Lcom/android/internal/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x1

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mInnerRadius:F

    .line 236
    const/16 v9, 0xc

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    .line 238
    const/16 v9, 0xe

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapMargin:F

    .line 240
    new-instance v9, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    iget v10, v10, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v9, v8, v10}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 242
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    sget-object v10, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 243
    new-instance v9, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    const/4 v10, 0x4

    invoke-direct {p0, v0, v10}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v10

    invoke-direct {v9, v8, v10}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 246
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeLines()V

    .line 248
    const/4 v9, 0x5

    invoke-direct {p0, v0, v9}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v7

    .line 249
    .local v7, pointId:I
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGlowRadius:F

    .line 251
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 254
    .local v5, outValue:Landroid/util/TypedValue;
    const/16 v9, 0xa

    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 255
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v9}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->internalSetTargetResources(I)V

    .line 257
    :cond_0
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 258
    :cond_1
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Must specify at least one target drawable"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 264
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    sget-object v9, Landroid/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 269
    const/4 v9, 0x0

    const/16 v10, 0x30

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGravity:I

    .line 271
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 273
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->assignDefaultsIfNeeded()V

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->initNetNodeProxyList()V

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080289

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 283
    .local v2, eicoi1:Landroid/graphics/drawable/Drawable;
    new-instance v9, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10802aa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, animDrawablePKGName:Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    const/4 v9, 0x5

    if-gt v3, v9, :cond_3

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eico_i"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "drawable"

    invoke-virtual {v9, v10, v11, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 289
    .local v4, id:I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 290
    .local v6, p:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v10, 0x96

    invoke-virtual {v9, v6, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 293
    .end local v4           #id:I
    .end local v6           #p:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 294
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    .line 296
    new-instance v9, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v9, p0, v10, p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;-><init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

    .line 337
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 339
    new-instance v9, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 340
    const/4 v3, 0x1

    :goto_1
    const/16 v9, 0xf

    if-gt v3, v9, :cond_4

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eico_c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "drawable"

    invoke-virtual {v9, v10, v11, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 343
    .restart local v4       #id:I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 344
    .restart local v6       #p:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v10, 0x28

    invoke-virtual {v9, v6, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 348
    .end local v4           #id:I
    .end local v6           #p:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "eico_c1"

    const-string v11, "drawable"

    invoke-virtual {v9, v10, v11, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 350
    .restart local v4       #id:I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 351
    .restart local v6       #p:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v10, 0x320

    invoke-virtual {v9, v6, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 361
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 362
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    .line 364
    new-instance v9, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v9, p0, v10, p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;-><init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAnimatDrawableCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

    .line 402
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAnimatDrawableCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 404
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    .line 405
    new-instance v9, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 406
    const/4 v3, 0x1

    :goto_2
    const/16 v9, 0xe

    if-gt v3, v9, :cond_6

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eico_e"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "drawable"

    invoke-virtual {v9, v10, v11, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 410
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v10, 0xa

    invoke-virtual {v9, v6, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 411
    const/16 v9, 0xe

    if-ne v3, v9, :cond_5

    .line 412
    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapedLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 406
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 415
    :cond_6
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 417
    new-instance v9, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v9, p0, v10, p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;-><init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapAnimateCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

    .line 472
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;FFJ)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeTargetSwingAnimator(Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;FFJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeScaleAnimator(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->playSnapAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapedLastDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->stopSnapAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1639
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    .line 1643
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1644
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapMargin:F

    .line 1648
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1649
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mInnerRadius:F

    .line 1651
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

    .line 1861
    sub-float v0, p3, p1

    .line 1862
    .local v0, deltaX:F
    sub-float v1, p4, p2

    .line 1863
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

    .line 1864
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
    .line 1868
    sub-float v0, p3, p1

    .line 1869
    .local v0, deltaX:F
    sub-float v1, p4, p2

    .line 1871
    .local v1, deltaY:F
    div-float v3, v1, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v2, v3

    .line 1873
    .local v2, rotation:F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 1874
    const-wide v3, 0x400921fb54442d18L

    float-to-double v5, v2

    add-double/2addr v3, v5

    double-to-float v2, v3

    .line 1876
    :cond_0
    return v2
.end method

.method private changeLine(ILcom/android/internal/widget/multiwaveview/NetNodeValue;)V
    .locals 16
    .parameter "index"
    .parameter "newValue"

    .prologue
    .line 671
    new-instance v13, Lcom/android/internal/widget/multiwaveview/LoopIndex;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v13, v1}, Lcom/android/internal/widget/multiwaveview/LoopIndex;-><init>(I)V

    .line 672
    .local v13, loopIndex:Lcom/android/internal/widget/multiwaveview/LoopIndex;
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->setCurrent(I)V

    .line 674
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->previous()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v14

    .line 676
    .local v14, view0:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->next()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v15

    .line 679
    .local v15, view1:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->x:F

    .line 680
    .local v4, x:F
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->y:F

    .line 682
    .local v5, y:F
    invoke-virtual {v14}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v2

    .line 683
    .local v2, x0:F
    invoke-virtual {v14}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v3

    .line 685
    .local v3, y0:F
    invoke-virtual {v15}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v10

    .line 686
    .local v10, x1:F
    invoke-virtual {v15}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v11

    .line 688
    .local v11, y1:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->previous()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 689
    .local v6, line0:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->current()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .local v12, line1:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    move-object/from16 v1, p0

    .line 691
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->setLineView(FFFFLcom/android/internal/widget/multiwaveview/EicoTargetDrawable;)V

    move-object/from16 v7, p0

    move v8, v4

    move v9, v5

    .line 692
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->setLineView(FFFFLcom/android/internal/widget/multiwaveview/EicoTargetDrawable;)V

    .line 698
    return-void
.end method

.method private computeInsets(II)V
    .locals 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v4, 0x0

    .line 1654
    const/4 v1, 0x1

    .line 1655
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGravity:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1658
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1667
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHorizontalInset:I

    .line 1670
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1679
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mVerticalInset:I

    .line 1682
    :goto_1
    return-void

    .line 1660
    :pswitch_1
    iput v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1663
    :pswitch_2
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1672
    :sswitch_0
    iput v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1675
    :sswitch_1
    iput p2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1658
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1670
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 910
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 911
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 912
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 913
    .local v2, target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    sget-object v3, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 911
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    .end local v2           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    .line 916
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;->onFinishFinalAnimation()V

    .line 935
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichTarget"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 929
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1884
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 941
    iget v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    .line 942
    .local v1, activeTarget:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v9, v0

    .line 944
    .local v9, targetHit:Z
    :goto_0
    if-eqz v9, :cond_2

    .line 948
    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isSnaped:Z

    .line 950
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->highlightSelected(I)V

    .line 960
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->stop()V

    .line 961
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 963
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->stopShakeLock()V

    .line 964
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 965
    .local v7, length:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_1

    .line 966
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 967
    .local v8, target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual {v8, v5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 968
    invoke-virtual {v8, v2}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setEnabled(Z)V

    .line 965
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6           #i:I
    .end local v7           #length:I
    .end local v8           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    .end local v9           #targetHit:Z
    :cond_0
    move v9, v2

    .line 942
    goto :goto_0

    .line 970
    .restart local v6       #i:I
    .restart local v7       #length:I
    .restart local v9       #targetHit:Z
    :cond_1
    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x32

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->gone(IJJ)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    .line 991
    .end local v6           #i:I
    .end local v7           #length:I
    :goto_2
    return-void

    .line 974
    :cond_2
    const-string v0, "EicoGlowPadView"

    const-string v3, "Finish with no target hit "

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-wide/16 v3, 0x15e

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->unattract(J)V

    .line 983
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setPositionX(F)V

    .line 984
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setPositionY(F)V

    .line 985
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setX(F)V

    .line 986
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setY(F)V

    .line 988
    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->setGrabbedState(I)V

    goto :goto_2
.end method

.method private drawLines(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1858
    :cond_0
    return-void

    .line 1836
    :cond_1
    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 1837
    .local v5, paint:Landroid/graphics/Paint;
    const/16 v0, 0x7d

    const/4 v1, 0x0

    const/16 v2, 0xed

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1838
    const/high16 v0, 0x4040

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1839
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1842
    .local v8, line:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1843
    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1844
    .local v6, bounds:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1845
    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getRotation()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getPositionX()F

    move-result v1

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getPositionY()F

    move-result v2

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1848
    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getPositionX()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getPositionY()F

    move-result v1

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1852
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

    .line 1854
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1839
    .end local v6           #bounds:Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private getIndex(FF)I
    .locals 13
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 1229
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1230
    .local v4, ntargets:I
    const-wide/16 v7, 0x0

    .line 1231
    .local v7, targetMinRad:D
    const-wide/16 v5, 0x0

    .line 1232
    .local v5, targetMaxRad:D
    neg-float v9, p2

    float-to-double v9, v9

    float-to-double v11, p1

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 1233
    .local v1, angleRad:D
    :goto_0
    const-wide/16 v9, 0x0

    cmpl-double v9, v1, v9

    if-lez v9, :cond_0

    .line 1234
    const-wide v9, -0x3fe6de04abbbd2e8L

    add-double/2addr v1, v9

    goto :goto_0

    .line 1235
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1239
    int-to-double v9, v3

    const-wide/high16 v11, 0x3fe0

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    mul-double/2addr v9, v11

    const-wide v11, 0x400921fb54442d18L

    mul-double/2addr v9, v11

    int-to-double v11, v4

    div-double/2addr v9, v11

    const-wide v11, 0x3fe0c152382d7365L

    sub-double v7, v9, v11

    .line 1240
    int-to-double v9, v3

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    mul-double/2addr v9, v11

    const-wide v11, 0x400921fb54442d18L

    mul-double/2addr v9, v11

    int-to-double v11, v4

    div-double/2addr v9, v11

    const-wide v11, 0x3fe0c152382d7365L

    sub-double v5, v9, v11

    .line 1243
    cmpl-double v9, v1, v7

    if-lez v9, :cond_1

    cmpg-double v9, v1, v5

    if-lez v9, :cond_2

    :cond_1
    const-wide v9, 0x401921fb54442d18L

    add-double/2addr v9, v1

    cmpl-double v9, v9, v7

    if-lez v9, :cond_3

    const-wide v9, 0x401921fb54442d18L

    add-double/2addr v9, v1

    cmpg-double v9, v9, v5

    if-gtz v9, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 1246
    .local v0, angleMatches:Z
    :goto_2
    if-eqz v0, :cond_4

    .line 1251
    .end local v0           #angleMatches:Z
    .end local v3           #i:I
    :goto_3
    return v3

    .line 1243
    .restart local v3       #i:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1235
    .restart local v0       #angleMatches:Z
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1251
    .end local v0           #angleMatches:Z
    :cond_5
    const/4 v3, -0x1

    goto :goto_3
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 2
    .parameter "a"
    .parameter "id"

    .prologue
    .line 726
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 727
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
    .line 1889
    invoke-super {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1891
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1892
    const v2, 0x3fa66666

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGlowRadius:F

    mul-float v1, v2, v3

    .line 1897
    .local v1, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->square(F)F

    move-result v2

    return v2

    .line 1895
    .end local v1           #scaledTapRadius:F
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGlowRadius:F

    .restart local v1       #scaledTapRadius:F
    goto :goto_0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1490
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->switchToState(IFF)V

    .line 1492
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1463
    .local v0, eventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1464
    .local v1, eventY:F
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->switchToState(IFF)V

    .line 1465
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1466
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDragging:Z

    .line 1470
    :goto_0
    return-void

    .line 1468
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 38
    .parameter "event"

    .prologue
    .line 1495
    const/4 v4, -0x1

    .line 1496
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 1497
    .local v10, historySize:I
    const/4 v15, 0x0

    .line 1498
    .local v15, moveDistance:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDownStartX:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDownStartY:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dist2(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v15, v0

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    .line 1501
    .local v26, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1502
    .local v17, ntargets:I
    const/16 v30, 0x0

    .line 1503
    .local v30, x:F
    const/16 v31, 0x0

    .line 1504
    .local v31, y:F
    const/4 v12, 0x0

    .local v12, k:I
    :goto_0
    add-int/lit8 v32, v10, 0x1

    move/from16 v0, v32

    if-ge v12, v0, :cond_a

    .line 1505
    if-ge v12, v10, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v8

    .line 1507
    .local v8, eventX:F
    :goto_1
    if-ge v12, v10, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v9

    .line 1510
    .local v9, eventY:F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    move/from16 v32, v0

    sub-float v28, v8, v32

    .line 1511
    .local v28, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    move/from16 v32, v0

    sub-float v29, v9, v32

    .line 1512
    .local v29, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dist2(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v27, v0

    .line 1513
    .local v27, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    move/from16 v32, v0

    cmpl-float v32, v27, v32

    if-lez v32, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    move/from16 v32, v0

    div-float v18, v32, v27

    .line 1515
    .local v18, scale:F
    :goto_3
    mul-float v13, v28, v18

    .line 1516
    .local v13, limitX:F
    mul-float v14, v29, v18

    .line 1517
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

    .line 1519
    .local v6, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDragging:Z

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 1520
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 1523
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDragging:Z

    move/from16 v32, v0

    if-eqz v32, :cond_9

    .line 1526
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    move/from16 v0, v17

    if-ge v11, v0, :cond_9

    .line 1527
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1530
    .local v21, target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v20

    .line 1531
    .local v20, snapRadius:F
    mul-float v19, v20, v20

    .line 1532
    .local v19, snapDistance2:F
    const-wide/16 v24, 0x0

    .line 1533
    .local v24, targetMinRad:D
    const-wide/16 v22, 0x0

    .line 1537
    .local v22, targetMaxRad:D
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

    div-double v32, v32, v34

    const-wide v34, 0x3fe0c152382d7365L

    sub-double v24, v32, v34

    .line 1538
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

    div-double v32, v32, v34

    const-wide v34, 0x3fe0c152382d7365L

    sub-double v22, v32, v34

    .line 1541
    const/16 v16, 0x0

    .line 1542
    .local v16, moveEnough:Z
    const/high16 v32, 0x428c

    cmpl-float v32, v15, v32

    if-ltz v32, :cond_1

    .line 1543
    const/16 v16, 0x1

    .line 1546
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->isEnabled()Z

    move-result v32

    if-eqz v32, :cond_4

    if-eqz v16, :cond_4

    .line 1547
    cmpl-double v32, v6, v24

    if-lez v32, :cond_2

    cmpg-double v32, v6, v22

    if-lez v32, :cond_3

    :cond_2
    const-wide v32, 0x401921fb54442d18L

    add-double v32, v32, v6

    cmpl-double v32, v32, v24

    if-lez v32, :cond_8

    const-wide v32, 0x401921fb54442d18L

    add-double v32, v32, v6

    cmpg-double v32, v32, v22

    if-gtz v32, :cond_8

    :cond_3
    const/4 v5, 0x1

    .line 1551
    .local v5, angleMatches:Z
    :goto_5
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dist2(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v34

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dist2(FF)F

    move-result v34

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v36

    div-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    cmpl-double v32, v32, v34

    if-ltz v32, :cond_4

    .line 1556
    move v4, v11

    .line 1526
    .end local v5           #angleMatches:Z
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 1505
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
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    .end local v22           #targetMaxRad:D
    .end local v24           #targetMinRad:D
    .end local v27           #touchRadius:F
    .end local v28           #tx:F
    .end local v29           #ty:F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    goto/16 :goto_1

    .line 1507
    .restart local v8       #eventX:F
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    goto/16 :goto_2

    .line 1513
    .restart local v9       #eventY:F
    .restart local v27       #touchRadius:F
    .restart local v28       #tx:F
    .restart local v29       #ty:F
    :cond_7
    const/high16 v18, 0x3f80

    goto/16 :goto_3

    .line 1547
    .restart local v6       #angleRad:D
    .restart local v11       #i:I
    .restart local v13       #limitX:F
    .restart local v14       #limitY:F
    .restart local v16       #moveEnough:Z
    .restart local v18       #scale:F
    .restart local v19       #snapDistance2:F
    .restart local v20       #snapRadius:F
    .restart local v21       #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    .restart local v22       #targetMaxRad:D
    .restart local v24       #targetMinRad:D
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 1561
    .end local v11           #i:I
    .end local v16           #moveEnough:Z
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    .end local v22           #targetMaxRad:D
    .end local v24           #targetMinRad:D
    :cond_9
    move/from16 v30, v13

    .line 1562
    move/from16 v31, v14

    .line 1504
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1565
    .end local v6           #angleRad:D
    .end local v8           #eventX:F
    .end local v9           #eventY:F
    .end local v13           #limitX:F
    .end local v14           #limitY:F
    .end local v18           #scale:F
    .end local v27           #touchRadius:F
    .end local v28           #tx:F
    .end local v29           #ty:F
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDragging:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    .line 1595
    :goto_6
    return-void

    .line 1569
    :cond_b
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v4, v0, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isShowed:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    .line 1570
    const/16 v32, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->switchToState(IFF)V

    .line 1571
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->updateGlowPosition(FF)V

    .line 1577
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v4, :cond_d

    .line 1579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    .line 1580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    move/from16 v32, v0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1581
    .restart local v21       #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    sget-object v32, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->hasState([I)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 1582
    sget-object v32, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 1586
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_c
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v4, v0, :cond_d

    .line 1587
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1588
    .restart local v21       #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    sget-object v32, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->hasState([I)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 1589
    sget-object v32, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 1594
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_d
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    goto/16 :goto_6

    .line 1573
    :cond_e
    const/16 v32, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->switchToState(IFF)V

    .line 1574
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->updateGlowPosition(FF)V

    goto :goto_7
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1473
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDownStartX:F

    .line 1474
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDownStartY:F

    .line 1475
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->switchToState(IFF)V

    .line 1477
    return-void
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    .line 1002
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1003
    if-eq v0, p1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 1002
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1007
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .parameter "activeTarget"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 998
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->hideUnselected(I)V

    .line 999
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->initConfig()V

    .line 488
    return-void
.end method

.method private initConfig()V
    .locals 3

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getConfig()Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;

    move-result-object v0

    .line 492
    .local v0, c:Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;
    invoke-interface {v0}, Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;->getDurationMin()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDurationMin:J

    .line 493
    invoke-interface {v0}, Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;->getDurationMax()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDurationMax:J

    .line 494
    invoke-interface {v0}, Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;->getTensionMin()F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTensionMin:F

    .line 495
    invoke-interface {v0}, Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;->getTensionMax()F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTensionMax:F

    .line 496
    invoke-interface {v0}, Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;->getTensionProportion()F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTensionProportion:F

    .line 497
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .parameter "resourceId"

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1126
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;>;"
    iput-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1128
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v3

    .line 1129
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v2

    .line 1130
    .local v2, maxHeight:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1131
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1132
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1133
    .local v4, target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1134
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1136
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_0
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 1137
    :cond_1
    iput v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mMaxTargetWidth:I

    .line 1138
    iput v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mMaxTargetHeight:I

    .line 1139
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->requestLayout()V

    .line 1145
    :goto_1
    return-void

    .line 1142
    :cond_2
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->updateTargetPositions(FF)V

    goto :goto_1
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1109
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1110
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 1111
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1113
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1114
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 1115
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    const v8, 0x1080291

    invoke-direct {v5, v4, v7, v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    .line 1118
    .local v5, target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1115
    .end local v5           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 1120
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1121
    return-object v2
.end method

.method private makeAnimator(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;
    .locals 17
    .parameter "netNodeProxy"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "isOver"
    .parameter "inDuration"

    .prologue
    .line 631
    new-instance v9, Lcom/android/internal/widget/multiwaveview/NetNodeValue;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v9, v0, v1}, Lcom/android/internal/widget/multiwaveview/NetNodeValue;-><init>(FF)V

    .line 632
    .local v9, startValue:Lcom/android/internal/widget/multiwaveview/NetNodeValue;
    const/4 v11, 0x0

    iput v11, v9, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->alpha:F

    .line 634
    new-instance v4, Lcom/android/internal/widget/multiwaveview/NetNodeValue;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v4, v0, v1}, Lcom/android/internal/widget/multiwaveview/NetNodeValue;-><init>(FF)V

    .line 635
    .local v4, endValue:Lcom/android/internal/widget/multiwaveview/NetNodeValue;
    const/high16 v11, 0x3f80

    iput v11, v4, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->alpha:F

    .line 637
    const-string v11, "NetNodeValue"

    new-instance v12, Lcom/android/internal/widget/multiwaveview/NetNodeLocus;

    invoke-direct {v12}, Lcom/android/internal/widget/multiwaveview/NetNodeLocus;-><init>()V

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 640
    .local v8, ret:Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 642
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    .line 644
    .local v6, rand:D
    const-wide/16 v11, 0x0

    cmp-long v11, p7, v11

    if-gez v11, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDurationMin:J

    long-to-double v11, v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDurationMax:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDurationMin:J

    sub-long/2addr v13, v15

    long-to-double v13, v13

    mul-double/2addr v13, v6

    add-double/2addr v11, v13

    double-to-long v2, v11

    .line 647
    .local v2, duration:J
    invoke-virtual {v8, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 652
    .end local v2           #duration:J
    :goto_0
    if-eqz p6, :cond_1

    .line 653
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTensionMin:F

    float-to-double v11, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTensionMax:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTensionMin:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    const-wide/high16 v15, 0x3ff0

    sub-double/2addr v15, v6

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    double-to-float v10, v11

    .line 656
    .local v10, tension:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTensionProportion:F

    .line 658
    .local v5, proportion:F
    new-instance v11, Lcom/android/internal/widget/multiwaveview/NetViewInterpolator;

    invoke-direct {v11, v10, v5}, Lcom/android/internal/widget/multiwaveview/NetViewInterpolator;-><init>(FF)V

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 663
    .end local v5           #proportion:F
    .end local v10           #tension:F
    :goto_1
    return-object v8

    .line 649
    :cond_0
    move-wide/from16 v0, p7

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 660
    :cond_1
    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method private makeLines()V
    .locals 4

    .prologue
    .line 1754
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 1755
    new-instance v1, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080297

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 1757
    .local v1, line:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1754
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1760
    .end local v1           #line:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_0
    return-void
.end method

.method private makeScaleAnimator(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;
    .locals 7
    .parameter "netNodeProxy"
    .parameter "startScale"
    .parameter "endScale"
    .parameter "inDuration"

    .prologue
    .line 611
    new-instance v2, Lcom/android/internal/widget/multiwaveview/NetNodeValue;

    invoke-direct {v2}, Lcom/android/internal/widget/multiwaveview/NetNodeValue;-><init>()V

    .line 612
    .local v2, startValue:Lcom/android/internal/widget/multiwaveview/NetNodeValue;
    iput p2, v2, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->scale:F

    .line 613
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v3

    iput v3, v2, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->x:F

    .line 614
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v3

    iput v3, v2, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->y:F

    .line 615
    new-instance v0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/NetNodeValue;-><init>()V

    .line 616
    .local v0, endValue:Lcom/android/internal/widget/multiwaveview/NetNodeValue;
    iput p3, v0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->scale:F

    .line 617
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->x:F

    .line 618
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->y:F

    .line 620
    const-string v3, "NetNodeValue"

    new-instance v4, Lcom/android/internal/widget/multiwaveview/NetNodeLocus;

    invoke-direct {v4}, Lcom/android/internal/widget/multiwaveview/NetNodeLocus;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {p1, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 622
    .local v1, ret:Landroid/animation/ValueAnimator;
    invoke-virtual {v1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 623
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 624
    return-object v1
.end method

.method private makeShowAnimator(Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;II)Landroid/animation/Animator;
    .locals 15
    .parameter "v"
    .parameter "index"
    .parameter "max"

    .prologue
    .line 580
    const/4 v3, 0x0

    .line 581
    .local v3, x0:F
    const/4 v4, 0x0

    .line 582
    .local v4, y0:F
    const/4 v5, 0x0

    .line 583
    .local v5, x1:F
    const/4 v6, 0x0

    .line 585
    .local v6, y1:F
    move/from16 v0, p2

    int-to-double v7, v0

    const-wide v13, -0x3fe6de04abbbd2e8L

    mul-double/2addr v7, v13

    move/from16 v0, p3

    int-to-double v13, v0

    div-double v11, v7, v13

    .line 587
    .local v11, rotation:D
    iget v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    const-wide v13, 0x401709d10d3e7eabL

    sub-double v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    double-to-float v5, v7

    .line 588
    iget v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    const-wide v13, 0x401709d10d3e7eabL

    sub-double v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    double-to-float v6, v7

    .line 590
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    .line 592
    .local v2, netNodeProxy:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeAnimator(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 595
    .local v10, ret:Landroid/animation/ValueAnimator;
    return-object v10
.end method

.method private makeTargetSwingAnimator(Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;FFJ)Landroid/animation/ValueAnimator;
    .locals 4
    .parameter "targetDrawable"
    .parameter "startDegree"
    .parameter "endDegree"
    .parameter "inDuration"

    .prologue
    .line 602
    const-string v1, "Rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 604
    .local v0, ret:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 605
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const v2, 0x3f8a3d71

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 606
    return-object v0
.end method

.method private playIndicatorAnim()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 789
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 790
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorTotalTime:J

    .line 791
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isIndicatorAnimRunning:Z

    .line 793
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method private playShakeLock()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAnimatDrawableCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 809
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mStartShockTotalTime:J

    .line 810
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isRockAnimRunning:Z

    .line 812
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 813
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->playIndicatorAnim()V

    goto :goto_0
.end method

.method private playSnapAnimation()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 840
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapAnimateCallback:Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 844
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapedAnimateTotalTime:J

    .line 845
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 846
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 849
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 754
    const/4 v0, 0x0

    .line 755
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 756
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 765
    move v0, v1

    .line 767
    :goto_0
    return v0

    .line 758
    :sswitch_0
    move v0, p2

    .line 759
    goto :goto_0

    .line 761
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 762
    goto :goto_0

    .line 756
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 1602
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 1606
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGrabbedState:I

    .line 1607
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 1608
    if-nez p1, :cond_1

    .line 1609
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1615
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1618
    :cond_0
    return-void

    .line 1612
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setLineView(FFFFLcom/android/internal/widget/multiwaveview/EicoTargetDrawable;)V
    .locals 10
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "line"

    .prologue
    .line 703
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->calcRotation(FFFF)F

    move-result v2

    .line 704
    .local v2, rotation:F
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->calcLength(FFFF)I

    move-result v0

    .line 706
    .local v0, length:I
    const/high16 v6, 0x4334

    mul-float/2addr v6, v2

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L

    div-double/2addr v6, v8

    double-to-float v3, v6

    .line 707
    .local v3, rotationDeg:F
    add-float v6, p1, p3

    const/high16 v7, 0x4000

    div-float v4, v6, v7

    .line 709
    .local v4, x:F
    add-float v6, p2, p4

    const/high16 v7, 0x4000

    div-float v5, v6, v7

    .line 711
    .local v5, y:F
    invoke-virtual {p5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_0

    invoke-virtual {p5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v6

    cmpl-float v6, v6, v5

    if-nez v6, :cond_0

    invoke-virtual {p5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getRotation()F

    move-result v6

    cmpl-float v6, v6, v3

    if-nez v6, :cond_0

    .line 723
    :goto_0
    return-void

    .line 716
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    neg-int v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x4

    const/4 v7, 0x0

    div-int/lit8 v8, v0, 0x2

    const/4 v9, 0x3

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 718
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p5, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 719
    invoke-virtual {p5, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setRotation(F)V

    .line 721
    invoke-virtual {p5, v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setX(F)V

    .line 722
    invoke-virtual {p5, v5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setY(F)V

    goto :goto_0
.end method

.method private showTargets(Z)V
    .locals 12
    .parameter "animate"

    .prologue
    const/4 v11, 0x1

    .line 1073
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->stop()V

    .line 1074
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 1075
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 1077
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    if-nez v5, :cond_1

    .line 1078
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getShowAnimator()Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    .line 1083
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1084
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1085
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1086
    .local v4, target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual {v4, v11}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setEnabled(Z)V

    .line 1087
    sget-object v5, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 1084
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1080
    .end local v0           #i:I
    .end local v2           #length:I
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_1
    iput-boolean v11, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isShowed:Z

    goto :goto_0

    .line 1090
    .restart local v0       #i:I
    .restart local v2       #length:I
    :cond_2
    sget-object v1, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 1092
    .local v1, interpolator:Landroid/animation/TimeInterpolator;
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1093
    .local v3, lineLength:I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_3

    .line 1094
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1095
    .restart local v4       #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual {v4, v11}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setEnabled(Z)V

    .line 1096
    sget-object v5, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 1097
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

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

    const-string/jumbo v10, "onUpdate"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1103
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->start()V

    .line 1104
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 1105
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 1880
    mul-float v0, p1, p1

    return v0
.end method

.method private stopIndicatorAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 818
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 821
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isIndicatorAnimRunning:Z

    .line 822
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 823
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorTotalTime:J

    .line 824
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 825
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 826
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    goto :goto_0
.end method

.method private stopShakeLock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 831
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mStartShockTotalTime:J

    .line 832
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isRockAnimRunning:Z

    .line 833
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 834
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 835
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->stopIndicatorAnim()V

    .line 836
    return-void
.end method

.method private stopSnapAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 852
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isSnaped:Z

    .line 853
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapedAnimateTotalTime:J

    .line 854
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 856
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 859
    :cond_0
    return-void
.end method

.method private switchToState(IFF)V
    .locals 3
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 862
    packed-switch p1, :pswitch_data_0

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 865
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->deactivateTargets()V

    .line 866
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 867
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    goto :goto_0

    .line 872
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->stopShakeLock()V

    goto :goto_0

    .line 877
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 880
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->setGrabbedState(I)V

    goto :goto_0

    .line 885
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 889
    const-wide/16 v0, 0x15e

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->attract(FFJ)V

    goto :goto_0

    .line 894
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 895
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    goto :goto_0

    .line 904
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->doFinish()V

    goto :goto_0

    .line 862
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

    .line 475
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dispatchOnFinishFinalAnimation()V

    .line 480
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dispatchTriggerEvent(I)V

    .line 482
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->setGrabbedState(I)V

    .line 484
    return-void
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 1621
    iget v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 1622
    .local v0, tx:F
    iget v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 1623
    .local v1, ty:F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 1626
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->switchToState(IFF)V

    .line 1627
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->updateGlowPosition(FF)V

    .line 1628
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDragging:Z

    .line 1635
    :goto_0
    return v2

    .line 1632
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 1633
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    sget-object v3, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 1635
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateGlowPosition(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setX(F)V

    .line 1455
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setY(F)V

    .line 1456
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 10
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1737
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1738
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1739
    .local v3, size:I
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v3

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 1740
    .local v0, alpha:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1741
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1742
    .local v4, targetIcon:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 1743
    .local v1, angle:F
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setPositionX(F)V

    .line 1744
    invoke-virtual {v4, p2}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setPositionY(F)V

    .line 1745
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setX(F)V

    .line 1746
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setY(F)V

    .line 1740
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1748
    .end local v1           #angle:F
    .end local v4           #targetIcon:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public attract(FFJ)V
    .locals 31
    .parameter "tx"
    .parameter "ty"
    .parameter "duration"

    .prologue
    .line 1260
    const/16 v25, 0x0

    .line 1261
    .local v25, snapRadius:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1263
    .local v21, max:I
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getIndex(FF)I

    move-result v19

    .line 1264
    .local v19, index:I
    rem-int v19, v19, v21

    .line 1266
    if-gez v19, :cond_1

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1274
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    .local v15, animList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeUnattract(J)Landroid/animation/AnimatorSet;

    move-result-object v26

    .line 1278
    .local v26, unattract:Landroid/animation/Animator;
    if-eqz v26, :cond_2

    .line 1279
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mInnerRadius:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    add-float v25, v3, v9

    .line 1281
    mul-float v24, v25, v25

    .line 1283
    .local v24, snapDistance2:F
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dist2(FF)F

    move-result v3

    cmpg-float v3, v3, v24

    if-gez v3, :cond_3

    .line 1284
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1285
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1286
    .local v16, animatorSet:Landroid/animation/AnimatorSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1287
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1292
    .end local v16           #animatorSet:Landroid/animation/AnimatorSet;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    .line 1294
    .local v4, netNodeProxy:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1296
    const/16 v27, 0x0

    .line 1297
    .local v27, x0:F
    const/16 v28, 0x0

    .line 1299
    .local v28, y0:F
    const/4 v5, 0x0

    .line 1300
    .local v5, x:F
    const/4 v6, 0x0

    .line 1301
    .local v6, y:F
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v5

    .line 1302
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v6

    .line 1304
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->calcRotation(FFFF)F

    move-result v22

    .line 1306
    .local v22, r2:F
    move/from16 v0, v27

    float-to-double v11, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

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

    .line 1307
    .local v7, x1:F
    move/from16 v0, v28

    float-to-double v11, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

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

    .line 1309
    .local v8, y1:F
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v10, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeAnimator(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;

    move-result-object v17

    .line 1312
    .local v17, attract:Landroid/animation/Animator;
    if-eqz v17, :cond_4

    .line 1313
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1318
    .local v20, len:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 1319
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 1320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    .line 1321
    .local v10, tmpNode:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    const/high16 v11, 0x3f80

    const v12, 0x3ee66666

    move-object/from16 v9, p0

    move-wide/from16 v13, p3

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeScaleAnimator(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;

    move-result-object v23

    .line 1322
    .local v23, ret:Landroid/animation/Animator;
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    .end local v10           #tmpNode:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    .end local v23           #ret:Landroid/animation/Animator;
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1326
    :cond_6
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1328
    .restart local v16       #animatorSet:Landroid/animation/AnimatorSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1329
    new-instance v3, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$7;-><init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1347
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public changeNodeValue(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;Lcom/android/internal/widget/multiwaveview/NetNodeValue;)V
    .locals 1
    .parameter "nodeProxy"
    .parameter "newValue"

    .prologue
    .line 667
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getIndex()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->changeLine(ILcom/android/internal/widget/multiwaveview/NetNodeValue;)V

    .line 668
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1828
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1829
    return-void
.end method

.method public getConfig()Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mConfig:Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/android/internal/widget/multiwaveview/NetViewAnimatorDefaultConfig;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/NetViewAnimatorDefaultConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mConfig:Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mConfig:Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;

    return-object v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 1920
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1921
    .local v0, drawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0
.end method

.method public getShowAnimator()Landroid/animation/AnimatorSet;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f80

    .line 516
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 517
    .local v4, ret:Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v1, animList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iput-boolean v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isShowed:Z

    .line 520
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 521
    .local v3, max:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 522
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v5

    .line 523
    .local v5, v:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    sget-object v6, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 524
    invoke-virtual {v5, v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setEnabled(Z)V

    .line 525
    invoke-virtual {v5, v7}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 526
    invoke-virtual {v5, v7}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setScaleX(F)V

    .line 527
    invoke-virtual {v5, v7}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setScaleY(F)V

    .line 528
    invoke-direct {p0, v5, v2, v3}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeShowAnimator(Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;II)Landroid/animation/Animator;

    move-result-object v0

    .line 530
    .local v0, anim:Landroid/animation/Animator;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    .end local v0           #anim:Landroid/animation/Animator;
    .end local v5           #v:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_0
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 534
    new-instance v6, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;-><init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 574
    return-object v4
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 1904
    const/4 v0, 0x0

    return v0
.end method

.method public gone(IJJ)Landroid/animation/AnimatorSet;
    .locals 23
    .parameter "index"
    .parameter "duration"
    .parameter "startDelay"

    .prologue
    .line 1377
    const/16 v16, 0x0

    .line 1378
    .local v16, goneLoop:Landroid/animation/Animator;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIsToGone:Z

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1381
    .local v18, max:I
    rem-int p1, p1, v18

    .line 1383
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    .local v11, animList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v19

    .line 1387
    .local v19, v:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v14

    .line 1388
    .local v14, endX:F
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v15

    .line 1390
    .local v15, endY:F
    new-instance v17, Lcom/android/internal/widget/multiwaveview/LoopIndex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/android/internal/widget/multiwaveview/LoopIndex;-><init>(I)V

    .line 1391
    .local v17, loopIndex:Lcom/android/internal/widget/multiwaveview/LoopIndex;
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->setCurrent(I)V

    .line 1392
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->current()I

    move-result v13

    .line 1393
    .local v13, endIndex:I
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->inc()I

    .line 1395
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->current()I

    move-result v2

    if-eq v2, v13, :cond_0

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->current()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    .line 1397
    .local v3, netNodeProxy:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v20

    .line 1399
    .local v20, vloop:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v21

    .line 1400
    .local v21, x0:F
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v22

    .line 1402
    .local v22, y0:F
    move v6, v14

    .line 1403
    .local v6, x1:F
    move v7, v15

    .line 1404
    .local v7, y1:F
    const/high16 v2, 0x4080

    mul-float v2, v2, v21

    const/high16 v4, 0x40a0

    div-float v4, v2, v4

    const/high16 v2, 0x4080

    mul-float v2, v2, v22

    const/high16 v5, 0x40a0

    div-float v5, v2, v5

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeAnimator(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;

    move-result-object v16

    .line 1413
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->inc()I

    goto :goto_0

    .line 1418
    .end local v3           #netNodeProxy:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    .end local v6           #x1:F
    .end local v7           #y1:F
    .end local v20           #vloop:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    .end local v21           #x0:F
    .end local v22           #y0:F
    :cond_0
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1420
    .local v12, animatorSet:Landroid/animation/AnimatorSet;
    invoke-virtual {v12, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1422
    new-instance v2, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$8;-><init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1442
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isShowed:Z

    .line 1443
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 1444
    return-object v12
.end method

.method public hideTargets(ZZ)V
    .locals 13
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 1039
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v7}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->cancel()V

    .line 1043
    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    .line 1044
    .local v1, duration:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    .line 1046
    .local v0, delay:I
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v6, 0x3f80

    .line 1048
    .local v6, targetScale:F
    :goto_2
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1049
    .local v4, length:I
    sget-object v3, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 1050
    .local v3, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v4, :cond_3

    .line 1051
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1052
    .local v5, target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    sget-object v7, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 1053
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    int-to-long v8, v1

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string/jumbo v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    invoke-static {v5, v8, v9, v10}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1050
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1043
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v4           #length:I
    .end local v5           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    .end local v6           #targetScale:F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1044
    .restart local v1       #duration:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1046
    .restart local v0       #delay:I
    :cond_2
    const v6, 0x3f4ccccd

    goto :goto_2

    .line 1069
    .restart local v2       #i:I
    .restart local v3       #interpolator:Landroid/animation/TimeInterpolator;
    .restart local v4       #length:I
    .restart local v6       #targetScale:F
    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v7}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->start()V

    .line 1070
    return-void
.end method

.method public hideTargetsImmediate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1012
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->cancel()V

    .line 1013
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1014
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1015
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1016
    .local v3, target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    sget-object v4, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 1017
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 1018
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setEnabled(Z)V

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1020
    .end local v3           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1021
    .local v2, lineLength:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1022
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1023
    .restart local v3       #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    sget-object v4, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 1024
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 1025
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setEnabled(Z)V

    .line 1021
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1028
    .end local v3           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_1
    return-void
.end method

.method public initNetNodeProxyList()V
    .locals 4

    .prologue
    .line 506
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 507
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 508
    new-instance v1, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mNotifyChange:Lcom/android/internal/widget/multiwaveview/NetNodeProxy$NotifyChange;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;-><init>(Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;ILcom/android/internal/widget/multiwaveview/NetNodeProxy$NotifyChange;)V

    .line 510
    .local v1, netNodeProxy:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v1           #netNodeProxy:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    :cond_0
    return-void
.end method

.method public makeUnattract(J)Landroid/animation/AnimatorSet;
    .locals 14
    .parameter "duration"

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    const/4 v12, 0x0

    .line 1371
    :goto_0
    return-object v12

    .line 1353
    :cond_0
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1354
    .local v12, ret:Landroid/animation/AnimatorSet;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    .local v10, animList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1357
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1358
    .local v11, index:I
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mAttractIndexList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1360
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    .line 1361
    .local v1, netNodeProxy:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v13

    .line 1362
    .local v13, v:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual {v13}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v2

    invoke-virtual {v13}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v3

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;

    iget v4, v0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->x:F

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;

    iget v5, v0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->y:F

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeAnimator(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFFFZJ)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 1366
    .local v9, anim:Landroid/animation/Animator;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1369
    .end local v1           #netNodeProxy:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    .end local v9           #anim:Landroid/animation/Animator;
    .end local v11           #index:I
    .end local v13           #v:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_1
    invoke-virtual {v12, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 1764
    invoke-super {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadViewBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 1766
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1769
    .local v3, ntargets:I
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->drawLines(Landroid/graphics/Canvas;)V

    .line 1772
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1773
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1774
    .local v4, target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    if-eqz v4, :cond_0

    .line 1775
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1772
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1778
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1780
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_2

    .line 1781
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v7}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v10}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    .line 1786
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/AnimationDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1789
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1790
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v7}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v10}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    .line 1795
    const/high16 v5, -0x3d90

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1796
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/AnimationDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1797
    const/high16 v5, 0x4270

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1809
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isSnaped:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 1810
    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    float-to-int v6, v5

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v5

    float-to-int v5, v5

    add-int v0, v6, v5

    .line 1812
    .local v0, centerX:I
    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    float-to-int v6, v5

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int v1, v6, v5

    .line 1814
    .local v1, centerY:I
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_4

    .line 1815
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v7}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    .line 1820
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/AnimationDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1823
    .end local v0           #centerX:I
    .end local v1           #centerY:I
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1688
    sub-int v7, p4, p2

    .line 1689
    .local v7, width:I
    sub-int v0, p5, p3

    .line 1694
    .local v0, height:I
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1696
    .local v6, placementWidth:F
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRadius:F

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1698
    .local v5, placementHeight:F
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHorizontalInset:I

    int-to-float v8, v8

    int-to-float v9, v7

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mMaxTargetWidth:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float v3, v8, v9

    .line 1704
    .local v3, newWaveCenterX:F
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mVerticalInset:I

    int-to-double v8, v8

    int-to-float v10, v0

    iget v11, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mMaxTargetHeight:I

    int-to-float v11, v11

    add-float/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ffb333333333333L

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v4, v8

    .line 1707
    .local v4, newWaveCenterY:F
    iget-boolean v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mInitialLayout:Z

    if-eqz v8, :cond_0

    .line 1709
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->hideTargets(ZZ)V

    .line 1710
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mInitialLayout:Z

    .line 1713
    :cond_0
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v8, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setPositionX(F)V

    .line 1714
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v8, v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setPositionY(F)V

    .line 1716
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v8, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setPositionX(F)V

    .line 1717
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    invoke-virtual {v8, v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setPositionY(F)V

    .line 1718
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setX(F)V

    .line 1719
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setY(F)V

    .line 1722
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 1723
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1724
    .local v2, line:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setPositionX(F)V

    .line 1725
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setPositionY(F)V

    .line 1722
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1728
    .end local v2           #line:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->updateTargetPositions(FF)V

    .line 1730
    iput v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterX:F

    .line 1731
    iput v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mWaveCenterY:F

    .line 1733
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 773
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 774
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 775
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 776
    .local v0, computedHeight:I
    sub-int v4, v1, v3

    sub-int v5, v0, v2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->computeInsets(II)V

    .line 778
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->setMeasuredDimension(II)V

    .line 779
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1166
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIsToGone:Z

    if-eqz v3, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return v2

    .line 1169
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1170
    .local v0, action:I
    const/4 v1, 0x0

    .line 1172
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 1220
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

    .line 1224
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->invalidate()V

    .line 1225
    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1174
    :pswitch_0
    const-string v3, "EicoGlowPadView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** DOWN  ***  mPointX="

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

    .line 1177
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mPressed:Z

    .line 1178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDownStartX:F

    .line 1179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mDownStartY:F

    .line 1180
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 1181
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1182
    const/4 v1, 0x1

    .line 1183
    goto :goto_1

    .line 1188
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mPressed:Z

    if-eqz v3, :cond_0

    .line 1190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 1194
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1195
    const/4 v1, 0x1

    .line 1196
    goto :goto_1

    .line 1200
    :pswitch_2
    const-string v3, "EicoGlowPadView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** UP ***   mPointX="

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

    .line 1202
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mPressed:Z

    if-eqz v3, :cond_0

    .line 1204
    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mPressed:Z

    .line 1205
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1206
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 1207
    const/4 v1, 0x1

    .line 1208
    goto/16 :goto_1

    .line 1212
    :pswitch_3
    const-string v3, "EicoGlowPadView"

    const-string v4, "*** CANCEL ***"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mPressed:Z

    if-eqz v3, :cond_0

    .line 1215
    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mPressed:Z

    .line 1216
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 1217
    const/4 v1, 0x1

    .line 1218
    goto/16 :goto_1

    .line 1172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1148
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 1149
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->triggerUnlock()V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    :cond_1
    :goto_0
    return-void

    .line 1154
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGrabbedState:I

    if-eq v0, v2, :cond_1

    .line 1157
    const-string v0, "EicoGlowPadView"

    const-string v1, "----ping is called---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 1160
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->playShakeLock()V

    .line 1161
    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->showTargets(Z)V

    goto :goto_0
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 1
    .parameter "component"
    .parameter "name"
    .parameter "existingResId"

    .prologue
    .line 1912
    const/4 v0, 0x1

    return v0
.end method

.method public reset(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 1932
    const-string v0, "EicoGlowPadView"

    const-string v1, "--reset is called----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mPressed:Z

    .line 1934
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->stop()V

    .line 1935
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->hideTargets(ZZ)V

    .line 1936
    invoke-static {}, Lcom/android/internal/widget/multiwaveview/Tweener;->reset()V

    .line 1938
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 1939
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isRockAnimRunning:Z

    .line 1940
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1942
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 1943
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1945
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    .line 1946
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isIndicatorAnimRunning:Z

    .line 1947
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1949
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 1950
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1953
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I

    .line 1954
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIsToGone:Z

    .line 1955
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isSnaped:Z

    .line 1956
    return-void
.end method

.method public resourceRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1959
    const-string v0, "EicoGlowPadView"

    const-string v1, "-----resourceRelease IS called---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->stop()V

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1969
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    .line 1970
    iput-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isRockAnimRunning:Z

    .line 1971
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1972
    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1975
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1976
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1977
    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    .line 1984
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_4

    .line 1985
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1986
    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1989
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 1990
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1991
    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    .line 1994
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1995
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1996
    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;

    .line 1999
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 2000
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2001
    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    .line 2003
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_8

    .line 2004
    iput-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isIndicatorAnimRunning:Z

    .line 2005
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2006
    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2008
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 2009
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2010
    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mGoneAnimations:Landroid/animation/AnimatorSet;

    .line 2012
    :cond_9
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->start()V

    .line 737
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 0
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 1908
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1916
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadViewBase$OnTriggerListener;

    .line 1917
    return-void
.end method

.method public setTouchRecepient(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1901
    return-void
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 732
    return-void
.end method

.method public unattract(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1448
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeUnattract(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1449
    .local v0, unattract:Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1451
    :cond_0
    return-void
.end method
