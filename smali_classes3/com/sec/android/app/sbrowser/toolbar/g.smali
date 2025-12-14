.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/g;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/g;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/g;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
