.class public interface abstract Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;->EMPTY:Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuEventListener;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
