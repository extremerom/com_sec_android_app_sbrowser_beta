.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$2;

.field public final synthetic b:I

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/d;->a:Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$2;

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/d;->b:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/d;->c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/d;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/d;->a:Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$2;

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/d;->b:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/d;->c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/d;->d:I

    invoke-static {v1, p0, v2, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$2;->b(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$2;)V

    return-void
.end method
