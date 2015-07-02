.class public Lcom/android/internal/policy/impl/keyguard/BubblePoolRandomConfig;
.super Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;
.source "BubblePoolRandomConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUBBLE_DURATION_MAX:I = 0x1b58

.field private static final BUBBLE_DURATION_MIN:I = 0x1388

.field private static final BUBBLE_END_ALPHA_MAX:F = 0.0f

.field private static final BUBBLE_END_ALPHA_MIN:F = 0.0f

.field private static final BUBBLE_END_SCALE_MAX:F = 0.01f

.field private static final BUBBLE_END_SCALE_MIN:F = 0.001f

.field private static final BUBBLE_MAX:I = 0x7

.field private static final BUBBLE_MIN:I = 0x5

.field private static final BUBBLE_START_ALPHA_MAX:F = 255.0f

.field private static final BUBBLE_START_ALPHA_MIN:F = 204.0f

.field private static final BUBBLE_START_DELAY_MAX:I = 0x3e8

.field private static final BUBBLE_START_DELAY_MIN:I = 0x0

.field private static final BUBBLE_START_SCALE_MAX:F = 0.01f

.field private static final BUBBLE_START_SCALE_MIN:F = 0.001f

.field private static final BUBBLE_START_X_RANGE_MAX:F = 420.0f

.field private static final BUBBLE_START_Y_RANGE_MAX:F = 5.0f

.field private static final CONFIG_TYPE:I = 0x0

.field private static final CYCLE_COUNT_MAX:F = 4.0f

.field private static final MARGIN_MAX:F = 60.0f

.field private static final SPACING_TIME:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getBubbleDurationMax()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x1b58

    return v0
.end method

.method public getBubbleDurationMin()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x1388

    return v0
.end method

.method public getBubbleEndAlphaMax()F
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getBubbleEndAlphaMin()F
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getBubbleEndScaleMax()F
    .locals 1

    .prologue
    .line 88
    const v0, 0x3c23d70a

    return v0
.end method

.method public getBubbleEndScaleMin()F
    .locals 1

    .prologue
    .line 83
    const v0, 0x3a83126f

    return v0
.end method

.method public getBubbleMax()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x7

    return v0
.end method

.method public getBubbleMin()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x5

    return v0
.end method

.method public getBubbleStartAlphaMax()F
    .locals 1

    .prologue
    .line 98
    const/high16 v0, 0x437f

    return v0
.end method

.method public getBubbleStartAlphaMin()F
    .locals 1

    .prologue
    .line 93
    const/high16 v0, 0x434c

    return v0
.end method

.method public getBubbleStartDelayMax()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x3e8

    return v0
.end method

.method public getBubbleStartDelayMin()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getBubbleStartScaleMax()F
    .locals 1

    .prologue
    .line 78
    const v0, 0x3c23d70a

    return v0
.end method

.method public getBubbleStartScaleMin()F
    .locals 1

    .prologue
    .line 73
    const v0, 0x3a83126f

    return v0
.end method

.method public getConfigType()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomData()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCycleCountMax()F
    .locals 1

    .prologue
    .line 128
    const/high16 v0, 0x4080

    return v0
.end method

.method public getMarginMax()F
    .locals 1

    .prologue
    .line 123
    const/high16 v0, 0x4270

    return v0
.end method

.method public getSpacingTime()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x3e8

    return v0
.end method

.method public getStartXRangeMax()F
    .locals 1

    .prologue
    .line 113
    const/high16 v0, 0x43d2

    return v0
.end method

.method public getStartYRangeMax()F
    .locals 1

    .prologue
    .line 118
    const/high16 v0, 0x40a0

    return v0
.end method

.method public setCustomData([Ljava/lang/Object;)V
    .locals 0
    .parameter "customData"

    .prologue
    .line 143
    return-void
.end method
