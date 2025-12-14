.class public final synthetic Lcom/sec/android/app/sbrowser/extract_text/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;

.field public final synthetic b:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/d;->a:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extract_text/d;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/d;->a:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/d;->b:Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;Ljava/lang/Boolean;)V

    return-void
.end method
