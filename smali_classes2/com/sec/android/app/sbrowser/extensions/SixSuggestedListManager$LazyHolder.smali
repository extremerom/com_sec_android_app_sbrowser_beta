.class Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$LazyHolder;->INSTANCE:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    return-void
.end method
