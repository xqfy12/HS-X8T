.class public Lcom/android/internal/widget/multiwaveview/BubblePoolRandomConfig;
.super Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;
.source "BubblePoolRandomConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/multiwaveview/BubblePoolConfig",
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
    .line 4
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getBubbleDurationMax()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x1b58

    return v0
.end method

.method public getBubbleDurationMin()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x1388

    return v0
.end method

.method public getBubbleEndAlphaMax()F
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getBubbleEndAlphaMin()F
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getBubbleEndScaleMax()F
    .locals 1

    .prologue
    .line 87
    const v0, 0x3c23d70a

    return v0
.end method

.method public getBubbleEndScaleMin()F
    .locals 1

    .prologue
    .line 82
    const v0, 0x3a83126f

    return v0
.end method

.method public getBubbleMax()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x7

    return v0
.end method

.method public getBubbleMin()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x5

    return v0
.end method

.method public getBubbleStartAlphaMax()F
    .locals 1

    .prologue
    .line 97
    const/high16 v0, 0x437f

    return v0
.end method

.method public getBubbleStartAlphaMin()F
    .locals 1

    .prologue
    .line 92
    const/high16 v0, 0x434c

    return v0
.end method

.method public getBubbleStartDelayMax()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x3e8

    return v0
.end method

.method public getBubbleStartDelayMin()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getBubbleStartScaleMax()F
    .locals 1

    .prologue
    .line 77
    const v0, 0x3c23d70a

    return v0
.end method

.method public getBubbleStartScaleMin()F
    .locals 1

    .prologue
    .line 72
    const v0, 0x3a83126f

    return v0
.end method

.method public getConfigType()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomData()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCycleCountMax()F
    .locals 1

    .prologue
    .line 127
    const/high16 v0, 0x4080

    return v0
.end method

.method public getMarginMax()F
    .locals 1

    .prologue
    .line 122
    const/high16 v0, 0x4270

    return v0
.end method

.method public getSpacingTime()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x3e8

    return v0
.end method

.method public getStartXRangeMax()F
    .locals 1

    .prologue
    .line 112
    const/high16 v0, 0x43d2

    return v0
.end method

.method public getStartYRangeMax()F
    .locals 1

    .prologue
    .line 117
    const/high16 v0, 0x40a0

    return v0
.end method

.method public setCustomData([Ljava/lang/Object;)V
    .locals 0
    .parameter "customData"

    .prologue
    .line 142
    return-void
.end method
