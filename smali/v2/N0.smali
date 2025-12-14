.class public final Lv2/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/N0;->b:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv2/N0;->a:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lv2/s;

    const-string v0, "loadStates"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lv2/N0;->a:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv2/N0;->a:Z

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lv2/s;->d:Lv2/O;

    iget-object p1, p1, Lv2/O;->a:LEc/g;

    instance-of p1, p1, Lv2/M;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lv2/N0;->b:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter;

    invoke-static {p1}, Lv2/O0;->access$_init_$considerAllowingStateRestoration(Lv2/O0;)V

    invoke-virtual {p1, p0}, Lv2/O0;->removeLoadStateListener(Lsb/k;)V

    :cond_1
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
