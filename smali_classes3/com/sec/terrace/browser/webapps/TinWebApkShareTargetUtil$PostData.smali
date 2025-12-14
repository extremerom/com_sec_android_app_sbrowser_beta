.class Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostData"
.end annotation


# instance fields
.field public filenames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isMultipartEncoding:Z

.field public isValueFileUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->isMultipartEncoding:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->names:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->isValueFileUri:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->values:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->filenames:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->types:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;-><init>(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->addFileUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addFileUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->isValueFileUri:Ljava/util/ArrayList;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->filenames:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->types:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPlainText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->isValueFileUri:Ljava/util/ArrayList;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->filenames:Ljava/util/ArrayList;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->types:Ljava/util/ArrayList;

    const-string p1, "text/plain"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->addPlainText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
