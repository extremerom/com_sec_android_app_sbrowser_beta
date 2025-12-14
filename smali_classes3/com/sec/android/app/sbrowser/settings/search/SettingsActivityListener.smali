.class public interface abstract Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;",
        "",
        "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;",
        "getSettingSearchData",
        "()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;",
        "Landroid/widget/EditText;",
        "getSearchEditTextView",
        "()Landroid/widget/EditText;",
        "Ldb/r;",
        "addSearchKeywordToDB",
        "()V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addSearchKeywordToDB()V
.end method

.method public abstract getSearchEditTextView()Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSettingSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
