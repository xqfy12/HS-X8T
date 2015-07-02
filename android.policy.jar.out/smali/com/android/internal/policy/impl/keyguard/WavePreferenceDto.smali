.class public Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;
.super Ljava/lang/Object;
.source "WavePreferenceDto.java"


# instance fields
.field private mLastTraslateX:I

.field private mLastTraslateY:I

.field private mLoopNewTraslateX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmLastTraslateX()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->mLastTraslateX:I

    return v0
.end method

.method public getmLastTraslateY()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->mLastTraslateY:I

    return v0
.end method

.method public getmLoopNewTraslateX()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->mLoopNewTraslateX:I

    return v0
.end method

.method public setmLastTraslateX(I)V
    .locals 0
    .parameter "mLastTraslateX"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->mLastTraslateX:I

    .line 49
    return-void
.end method

.method public setmLastTraslateY(I)V
    .locals 0
    .parameter "mLastTraslateY"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->mLastTraslateY:I

    .line 61
    return-void
.end method

.method public setmLoopNewTraslateX(I)V
    .locals 0
    .parameter "mLoopNewTraslateX"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->mLoopNewTraslateX:I

    .line 73
    return-void
.end method
