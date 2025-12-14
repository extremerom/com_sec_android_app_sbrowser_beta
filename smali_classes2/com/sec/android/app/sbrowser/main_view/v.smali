.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/util/List;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/v;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/v;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/main_view/v;->c:Z

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/main_view/v;->d:Z

    iput p5, p0, Lcom/sec/android/app/sbrowser/main_view/v;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/v;->b:Ljava/util/List;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/v;->c:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/v;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/main_view/v;->d:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/v;->e:I

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/util/List;ZZI)V

    return-void
.end method
