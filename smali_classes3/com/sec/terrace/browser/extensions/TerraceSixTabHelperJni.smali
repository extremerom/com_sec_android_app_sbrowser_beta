.class Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/TerraceSixTabHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/Object;)J
    .locals 0

    invoke-static {p1}, LJ/N;->Mw6hAeBf(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public onAllTabsRemoved(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;ZI)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M15FEfzq(JLjava/lang/Object;ZI)V

    return-void
.end method

.method public onAllUnlockedTabsRemoved(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MlBs2mHT(JLjava/lang/Object;I)V

    return-void
.end method

.method public onBackgroundTabOpened(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MfeLtnNE(JLjava/lang/Object;I)V

    return-void
.end method

.method public onCurrentTabChanged(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;IIIIZ)V
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->Mo1USSnB(JLjava/lang/Object;IIIIZ)V

    return-void
.end method

.method public onLaunchNewTab(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;ZI)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MuQBY1dK(JLjava/lang/Object;ZI)V

    return-void
.end method

.method public onOtherTabsRemoved(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;IZI)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->M5Ud$oY6(JLjava/lang/Object;IZI)V

    return-void
.end method

.method public onTabAdded(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;IIIZ)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MbSMsrQ5(JLjava/lang/Object;IIIZ)V

    return-void
.end method

.method public onTabDetailsLoaded(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;ILjava/lang/String;I)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MKJXgmj1(JLjava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public onTabMoved(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;IIII)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MPQ9H4M0(JLjava/lang/Object;IIII)V

    return-void
.end method

.method public onTabOrderChanged(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;III)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MjVwLmDK(JLjava/lang/Object;III)V

    return-void
.end method

.method public onTabRemoved(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;ZI)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MQwlX91X(JLjava/lang/Object;ZI)V

    return-void
.end method

.method public onTabRemoving(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;IIIZ)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MQAixUDq(JLjava/lang/Object;IIIZ)V

    return-void
.end method

.method public onTabStateLoaded(JLcom/sec/terrace/browser/extensions/TerraceSixTabHelper;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MSNrK4Ei(JLjava/lang/Object;I)V

    return-void
.end method
