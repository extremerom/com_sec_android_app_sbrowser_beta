.class public final synthetic Lcom/sec/android/app/sbrowser/blockers/content_block/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$5;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$5;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/a;->a:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$5;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/a;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/a;->b:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/a;->a:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$5;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$5;->a(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$5;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
