.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCvc:Ljava/lang/String;

.field private final mGuid:Ljava/lang/String;

.field private final mIcon:I

.field private final mIconDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final mMonth:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mNickName:Ljava/lang/String;

.field private final mNumber:Ljava/lang/String;

.field private final mTerrace:Lcom/sec/terrace/Terrace;

.field private final mYear:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mTerrace:Lcom/sec/terrace/Terrace;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mGuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mNickName:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mNumber:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mMonth:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mYear:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mCvc:Ljava/lang/String;

    iput p10, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mIcon:I

    iput-object p11, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mIconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mCvc:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mGuid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mMonth:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mYear:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public showDialog()V
    .locals 7

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0e0909

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0383

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f0601be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    const v1, 0x7f0b0214

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0217

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mNickName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mNickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0b0218

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mNumber:Ljava/lang/String;

    const-string v3, "(.{4})"

    const-string v4, "$1 "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0212

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mMonth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mYear:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0ad1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mCvc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0216

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mIconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x1

    const v4, 0x7f07169f

    const v5, 0x7f0716a0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mIconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v2, v5, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v6, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mIcon:I

    invoke-static {v2, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v2, v5, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    const v1, 0x7f0b01f0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$1;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b01ed

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$3;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
