.class public final Lorg/chromium/content_public/browser/SelectionMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/chromium/content_public/browser/SelectionMenuGroup;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field public final id:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field public final items:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lorg/chromium/content_public/browser/SelectionMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public final order:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content_public/browser/SelectionMenuGroup;->id:I

    iput p2, p0, Lorg/chromium/content_public/browser/SelectionMenuGroup;->order:I

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lorg/chromium/content_public/browser/SelectionMenuGroup;->items:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public addItem(Lorg/chromium/content_public/browser/SelectionMenuItem;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/SelectionMenuGroup;->items:Ljava/util/SortedSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addItems(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/chromium/content_public/browser/SelectionMenuItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/content_public/browser/SelectionMenuGroup;->items:Ljava/util/SortedSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/chromium/content_public/browser/SelectionMenuGroup;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/SelectionMenuGroup;->compareTo(Lorg/chromium/content_public/browser/SelectionMenuGroup;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/chromium/content_public/browser/SelectionMenuGroup;)I
    .locals 0

    iget p0, p0, Lorg/chromium/content_public/browser/SelectionMenuGroup;->order:I

    iget p1, p1, Lorg/chromium/content_public/browser/SelectionMenuGroup;->order:I

    sub-int/2addr p0, p1

    return p0
.end method
