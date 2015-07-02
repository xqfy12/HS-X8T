.class public final Lcom/android/internal/policy/impl/keyguard/BubbleValueLocus;
.super Ljava/lang/Object;
.source "BubbleValueLocus.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBubbleValueLocus:Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocus;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)V
    .locals 1
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, config:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;,"Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocus;->mBubbleValueLocus:Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusBase;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocus;->init(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)V

    .line 18
    return-void
.end method

.method private init(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)V
    .locals 1
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, config:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;,"Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig<*>;"
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getConfigType()I

    .line 24
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForRamdom;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForRamdom;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocus;->mBubbleValueLocus:Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusBase;

    .line 29
    return-void
.end method


# virtual methods
.method public evaluate(FLcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;)Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;
    .locals 2
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocus;->mBubbleValueLocus:Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusBase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusBase;->evaluate(FLcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;)Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;

    move-result-object v0

    .line 35
    .local v0, ret:Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 9
    check-cast p2, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;

    .end local p2
    check-cast p3, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocus;->evaluate(FLcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;)Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;

    move-result-object v0

    return-object v0
.end method
