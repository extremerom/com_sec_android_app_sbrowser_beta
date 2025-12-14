.class public Lcom/sec/terrace/browser/instantapps/TerraceInstantAppsHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/instantapps/TerraceInstantAppsHandler;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method
