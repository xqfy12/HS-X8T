.class public abstract Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;
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
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mIsCallbackTriggered:Z

    .line 42
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mLastFrame:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 44
    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "who"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mIsCallbackTriggered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mLastFrame:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mLastFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mIsCallbackTriggered:Z

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->onAnimationComplete()V

    .line 56
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
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 63
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;->mWrappedCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 70
    :cond_0
    return-void
.end method
