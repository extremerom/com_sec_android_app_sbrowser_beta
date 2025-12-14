.class Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$6;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$6;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->j(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$6;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->j(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$6;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->p(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    return-object p1
.end method
