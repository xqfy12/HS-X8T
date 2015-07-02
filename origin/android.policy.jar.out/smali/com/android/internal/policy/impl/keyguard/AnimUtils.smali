.class public Lcom/android/internal/policy/impl/keyguard/AnimUtils;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field static sAnimators:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field static sEndAnimListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "Batteryplugin.AnimUtils"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->sAnimators:Ljava/util/HashSet;

    .line 33
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/AnimUtils$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/AnimUtils$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelOnDestroyActivity(Landroid/animation/Animator;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->sAnimators:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    return-void
.end method

.method public static createAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 83
    .local v0, anim:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 84
    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "target"
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 96
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 97
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 100
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 101
    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 88
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 89
    .local v0, anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 90
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 91
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "target"
    .parameter "values"

    .prologue
    .line 106
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 107
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 109
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 110
    return-object v0
.end method

.method public static onDestroyActivity()V
    .locals 4

    .prologue
    .line 67
    new-instance v1, Ljava/util/HashSet;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->sAnimators:Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 68
    .local v1, animators:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 69
    .local v0, a:Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 73
    :cond_0
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->sAnimators:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v0           #a:Landroid/animation/Animator;
    :cond_1
    return-void
.end method
