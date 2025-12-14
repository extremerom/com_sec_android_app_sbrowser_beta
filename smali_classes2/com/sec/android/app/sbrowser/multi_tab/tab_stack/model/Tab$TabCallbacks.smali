.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabCallbacks"
.end annotation


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->EMPTY:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    return-void
.end method


# virtual methods
.method public onSearchFilterChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTabBitmapLoaded()V
    .locals 0

    return-void
.end method

.method public onTabColorLoaded()V
    .locals 0

    return-void
.end method

.method public onTabDataLoaded(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 0

    return-void
.end method

.method public onTabDataUnloaded(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 0

    return-void
.end method

.method public onTabIconLoaded()V
    .locals 0

    return-void
.end method

.method public onTabTitleLoaded()V
    .locals 0

    return-void
.end method
