.class Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;
.super Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;-><init>(Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->invalidate()V

    .line 392
    return-void
.end method

.method public onAnimationComplete()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 399
    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 3
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isRockAnimRunning:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$100(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->invalidate()V

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "who"
    .parameter "what"

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLockShakeHandle:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mStartShockTotalTime:J

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->invalidate()V

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$4;->onAnimationComplete()V

    .line 375
    return-void
.end method
