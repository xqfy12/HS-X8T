.class Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;
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
    .line 297
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;-><init>(Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->invalidate()V

    .line 327
    return-void
.end method

.method public onAnimationComplete()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 334
    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 2
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->isIndicatorAnimRunning:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 322
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 318
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 320
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->invalidate()V

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "who"
    .parameter "what"

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorTotalTime:J

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->invalidate()V

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$3;->onAnimationComplete()V

    goto :goto_0
.end method
