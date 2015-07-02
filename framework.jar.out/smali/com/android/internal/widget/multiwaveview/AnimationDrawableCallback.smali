.class public abstract Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;
.super Ljava/lang/Object;
.source "AnimationDrawableCallback.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mIsCallbackTriggered:Z

.field private mLastFrame:Landroid/graphics/drawable/Drawable;

.field private mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .parameter "animationDrawable"
    .parameter "callback"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mIsCallbackTriggered:Z

    .line 43
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mLastFrame:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object p2, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 45
    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "who"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mIsCallbackTriggered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mLastFrame:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mLastFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mIsCallbackTriggered:Z

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->onAnimationComplete()V

    .line 57
    :cond_1
    return-void
.end method

.method public abstract onAnimationComplete()V
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 64
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 71
    :cond_0
    return-void
.end method
