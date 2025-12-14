.class public Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDataIndex:I

.field private mIsBioMetric:Ljava/lang/Boolean;

.field private mIsException:Z

.field private mPasswords:Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->mDataIndex:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->mType:I

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->mIsException:Z

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->mIsBioMetric:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->mPasswords:Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    return-void
.end method


# virtual methods
.method public getDataIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->mDataIndex:I

    return p0
.end method

.method public getPWDEntry()Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->mPasswords:Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->mType:I

    return p0
.end method

.method public isBioMetricData()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->mIsBioMetric:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isExceptionData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->mIsException:Z

    return p0
.end method
