.class public final Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aboutPageBottomLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aboutPageMidLayout:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aboutScrollview:Landroidx/core/widget/NestedScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aboutScrollviewLand:Landroid/widget/ScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final appDetailsLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final appName:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final appVersion:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final openSourceLicense:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final openSourceLicenseLand:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final openSourceLicenseLandLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final parent:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressBar:Landroidx/appcompat/widget/SeslProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final termsAndConditions:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final termsAndConditionsLand:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final updateButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final updateButtonLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final versionStatus:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroidx/core/widget/NestedScrollView;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/SeslProgressBar;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/widget/NestedScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroidx/appcompat/widget/SeslProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->aboutPageBottomLayout:Landroid/widget/LinearLayout;

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->aboutPageMidLayout:Landroid/view/View;

    move-object v1, p4

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->aboutScrollview:Landroidx/core/widget/NestedScrollView;

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->aboutScrollviewLand:Landroid/widget/ScrollView;

    move-object v1, p6

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->appDetailsLayout:Landroid/widget/LinearLayout;

    move-object v1, p7

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->appName:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    move-object v1, p8

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->appVersion:Landroid/widget/TextView;

    move-object v1, p9

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->openSourceLicense:Landroid/widget/Button;

    move-object v1, p10

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->openSourceLicenseLand:Landroid/widget/Button;

    move-object v1, p11

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->openSourceLicenseLandLayout:Landroid/widget/LinearLayout;

    move-object v1, p12

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->parent:Landroid/widget/LinearLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->termsAndConditions:Landroid/widget/Button;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->termsAndConditionsLand:Landroid/widget/Button;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButton:Landroid/widget/Button;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->updateButtonLayout:Landroid/widget/FrameLayout;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->versionStatus:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;
    .locals 22
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0b001c

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0b001d

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    const v1, 0x7f0b001e

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    if-eqz v7, :cond_0

    const v1, 0x7f0b001f

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ScrollView;

    if-eqz v8, :cond_0

    const v1, 0x7f0b00eb

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0b00ed

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v10, :cond_0

    const v1, 0x7f0b00ee

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0b0866

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_0

    const v1, 0x7f0b0867

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/Button;

    if-eqz v13, :cond_0

    const v1, 0x7f0b0868

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    const v1, 0x7f0b0928

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v16, :cond_0

    const v1, 0x7f0b0d30

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/Button;

    if-eqz v17, :cond_0

    const v1, 0x7f0b0d31

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/Button;

    if-eqz v18, :cond_0

    const v1, 0x7f0b0df3

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/Button;

    if-eqz v19, :cond_0

    const v1, 0x7f0b0df4

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/FrameLayout;

    if-eqz v20, :cond_0

    const v1, 0x7f0b0e03

    invoke-static {v1, v0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    move-object v3, v0

    move-object v4, v15

    invoke-direct/range {v3 .. v21}, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroidx/core/widget/NestedScrollView;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/SeslProgressBar;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0e0889

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SettingsAboutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
