.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCount:I

.field private mErrAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;->mErrAppsList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;->mCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;->mCount:I

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0e01ab

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter$ViewHolder;-><init>()V

    const v1, 0x7f0b05ef

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0b00ed

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter$ViewHolder;

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;->mErrAppsList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getView NameNotFoundException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;->mErrAppsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorAppsAdapter;)V

    invoke-static {p2, p1}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    return-object p2
.end method
