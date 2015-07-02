.class Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;
.super Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->loadAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;-><init>(Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->invalidate()V

    .line 384
    return-void
.end method

.method public onAnimationComplete()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$200(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$200(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 391
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

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->isIndicatorAnimRunning:Z

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$200(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 379
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->invalidate()V

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "who"
    .parameter "what"

    .prologue
    const/4 v3, 0x0

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$200(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$200(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorTotalTime:J

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mIndicatorAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->invalidate()V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$4;->onAnimationComplete()V

    goto :goto_0
.end method
