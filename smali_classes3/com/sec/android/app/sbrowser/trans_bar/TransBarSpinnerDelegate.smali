.class public interface abstract Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dismissDropDown()V
.end method

.method public abstract getLangList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;
.end method

.method public abstract onUpdateSourceLang(Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V
.end method

.method public abstract sendEventLog()V
.end method
