.class abstract Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method

.method public runAsync(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;->run()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;->next()V

    return-void
.end method
