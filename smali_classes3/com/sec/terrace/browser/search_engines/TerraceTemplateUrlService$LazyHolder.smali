.class Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LazyHolder;->INSTANCE:Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LazyHolder;->INSTANCE:Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    return-object v0
.end method
