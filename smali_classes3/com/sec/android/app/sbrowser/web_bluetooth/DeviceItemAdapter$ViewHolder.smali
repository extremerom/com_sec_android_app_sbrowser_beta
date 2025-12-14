.class Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b05ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b03eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method
