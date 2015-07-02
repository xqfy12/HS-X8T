.class public Lcom/android/internal/widget/multiwaveview/NetViewAnimatorDefaultConfig;
.super Ljava/lang/Object;
.source "NetViewAnimatorDefaultConfig.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/NetViewAnimatorConfig;


# static fields
.field private static final DURATION_MAX:I = 0x2ee

.field private static final DURATION_MIN:I = 0x1f4

.field private static final END_ALPHA:F = 0.0f

.field private static final END_SCALE:F = 0.2f

.field private static final SPACING_TIME:I = 0x0

.field private static final START_ALPHA:F = 204.0f

.field private static final START_DELAY:I = 0x0

.field private static final START_SCALE:F = 0.001f

.field private static final TENSION_MAX:F = 3.0f

.field private static final TENSION_MIN:F = 2.0f

.field private static final TENSION_PROPORTION:F = 0.33333334f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationMax()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x2ee

    return v0
.end method

.method public getDurationMin()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x1f4

    return v0
.end method

.method public getEndAlpha()F
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getEndScale()F
    .locals 1

    .prologue
    .line 78
    const v0, 0x3e4ccccd

    return v0
.end method

.method public getSpacingTime()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getStartAlpha()F
    .locals 1

    .prologue
    .line 83
    const/high16 v0, 0x434c

    return v0
.end method

.method public getStartDelay()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getStartScale()F
    .locals 1

    .prologue
    .line 73
    const v0, 0x3a83126f

    return v0
.end method

.method public getTensionMax()F
    .locals 1

    .prologue
    .line 55
    const/high16 v0, 0x4040

    return v0
.end method

.method public getTensionMin()F
    .locals 1

    .prologue
    .line 51
    const/high16 v0, 0x4000

    return v0
.end method

.method public getTensionProportion()F
    .locals 1

    .prologue
    .line 59
    const v0, 0x3eaaaaab

    return v0
.end method
