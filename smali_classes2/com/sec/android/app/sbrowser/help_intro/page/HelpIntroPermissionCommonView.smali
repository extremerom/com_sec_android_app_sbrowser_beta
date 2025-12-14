.class public Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionCommonView;
.super Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionCommonView;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0452

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->init()V

    return-void
.end method
