.class public abstract Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;
.super Landroidx/databinding/k;
.source "SourceFile"


# instance fields
.field public final searchEngineButtonLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchEngineIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchEngineSpinnerButton:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/k;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;->searchEngineButtonLayout:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;->searchEngineIcon:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;->searchEngineSpinnerButton:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method
