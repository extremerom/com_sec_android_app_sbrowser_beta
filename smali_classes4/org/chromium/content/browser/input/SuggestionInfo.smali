.class public Lorg/chromium/content/browser/input/SuggestionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mMarkerTag:I

.field private final mPrefix:Ljava/lang/String;

.field private final mSuffix:Ljava/lang/String;

.field private final mSuggestion:Ljava/lang/String;

.field private final mSuggestionIndex:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content/browser/input/SuggestionInfo;->mMarkerTag:I

    iput p2, p0, Lorg/chromium/content/browser/input/SuggestionInfo;->mSuggestionIndex:I

    iput-object p3, p0, Lorg/chromium/content/browser/input/SuggestionInfo;->mPrefix:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/content/browser/input/SuggestionInfo;->mSuggestion:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/content/browser/input/SuggestionInfo;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method private static createArray(I)[Lorg/chromium/content/browser/input/SuggestionInfo;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-array p0, p0, [Lorg/chromium/content/browser/input/SuggestionInfo;

    return-object p0
.end method

.method private static createSuggestionInfoAndPutInArray([Lorg/chromium/content/browser/input/SuggestionInfo;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v6, Lorg/chromium/content/browser/input/SuggestionInfo;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/SuggestionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, p0, p1

    return-void
.end method


# virtual methods
.method public getMarkerTag()I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/SuggestionInfo;->mMarkerTag:I

    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionInfo;->mPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionInfo;->mSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionInfo;->mSuggestion:Ljava/lang/String;

    return-object p0
.end method

.method public getSuggestionIndex()I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/SuggestionInfo;->mSuggestionIndex:I

    return p0
.end method
