.class public Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;
    }
.end annotation


# instance fields
.field private mAllowListedDomains:Ljava/util/HashSet;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowlisted_domains"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBoardingPassLangWiseKeyword:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang_wise_word_list"
    .end annotation
.end field

.field private mBpImageSubstrings:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bp_image_substring_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlightRegex:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flight_regex"
    .end annotation
.end field

.field private mFlightRegexWeight:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flight_regex_weight"
    .end annotation
.end field

.field private mSeatRegex:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seat_regex"
    .end annotation
.end field

.field private mSeatRegexWeight:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seat_regex_weight"
    .end annotation
.end field

.field private mThreshold:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threshold"
    .end annotation
.end field


# virtual methods
.method public getAllowListedDomains()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->mAllowListedDomains:Ljava/util/HashSet;

    return-object p0
.end method

.method public getBoardingPassLangWiseKeyboard()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->mBoardingPassLangWiseKeyword:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;

    return-object p0
.end method

.method public getBpImageSubstrings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->mBpImageSubstrings:Ljava/util/List;

    return-object p0
.end method

.method public getFlightRegex()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->mFlightRegex:Ljava/lang/String;

    return-object p0
.end method

.method public getFlightRegexWeight()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->mFlightRegexWeight:D

    return-wide v0
.end method

.method public getSeatRegex()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->mSeatRegex:Ljava/lang/String;

    return-object p0
.end method

.method public getSeatRegexWeight()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->mSeatRegexWeight:D

    return-wide v0
.end method

.method public getThreshold()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->mThreshold:D

    return-wide v0
.end method
