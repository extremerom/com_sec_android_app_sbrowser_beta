.class public final synthetic Lcom/sec/android/app/sbrowser/extract_text/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/a;->a:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    return-void
.end method


# virtual methods
.method public final onInitialised(Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/a;->a:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    return-void
.end method
