.class Lcom/sec/terrace/browser/flags/TinCachedFlags$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/flags/TinCachedFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/terrace/browser/flags/TinCachedFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/flags/TinCachedFlags;

    invoke-direct {v0}, Lcom/sec/terrace/browser/flags/TinCachedFlags;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/flags/TinCachedFlags$LazyHolder;->INSTANCE:Lcom/sec/terrace/browser/flags/TinCachedFlags;

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/terrace/browser/flags/TinCachedFlags;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/flags/TinCachedFlags$LazyHolder;->INSTANCE:Lcom/sec/terrace/browser/flags/TinCachedFlags;

    return-object v0
.end method
