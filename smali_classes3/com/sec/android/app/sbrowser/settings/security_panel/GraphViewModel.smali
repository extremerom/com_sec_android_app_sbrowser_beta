.class public Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# instance fields
.field public counter:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field public mCleanSummary:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field public mCurStatus:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field public mPrivacySummary:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field public mTipPromote:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->counter:Landroidx/lifecycle/X;

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mCleanSummary:Landroidx/lifecycle/X;

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mPrivacySummary:Landroidx/lifecycle/X;

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mCurStatus:Landroidx/lifecycle/X;

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mTipPromote:Landroidx/lifecycle/X;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->counter:Landroidx/lifecycle/X;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getSecurityStatus()Landroidx/lifecycle/X;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mCurStatus:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getSummaryClean()Landroidx/lifecycle/X;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mCleanSummary:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getSummaryPrivacy()Landroidx/lifecycle/X;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mPrivacySummary:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getTipPromote()Landroidx/lifecycle/X;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mTipPromote:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public setSecurityStatus(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mCurStatus:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setSummaryClean(Ljava/lang/String;)V
    .locals 2

    const-string v0, "setSummaryClean : "

    const-string v1, "GraphViewModel"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mCleanSummary:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setSummaryPrivacy(Ljava/lang/String;)V
    .locals 2

    const-string v0, "setSummaryPrivacy : "

    const-string v1, "GraphViewModel"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mPrivacySummary:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setTipPromote(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/GraphViewModel;->mTipPromote:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method
