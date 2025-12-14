.class Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Divider;
.super Landroidx/recyclerview/widget/F0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Divider"
.end annotation


# instance fields
.field mListSize:I

.field mSpace:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Divider;->this$0:Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Divider;->mSpace:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Divider;->mListSize:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/d1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget p3, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Divider;->mListSize:I

    add-int/lit8 p3, p3, -0x1

    if-eq p2, p3, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Divider;->mSpace:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method
