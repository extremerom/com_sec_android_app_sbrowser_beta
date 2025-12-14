.class public final synthetic Lcom/sec/android/app/sbrowser/tab_manager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    check-cast p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->c(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0
.end method
