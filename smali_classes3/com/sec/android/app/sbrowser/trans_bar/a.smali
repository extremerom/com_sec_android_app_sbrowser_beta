.class public final synthetic Lcom/sec/android/app/sbrowser/trans_bar/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
