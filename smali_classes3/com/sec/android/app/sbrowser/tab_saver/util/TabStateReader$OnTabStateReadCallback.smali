.class public interface abstract Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTabStateReadCallback"
.end annotation


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;->EMPTY:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;

    return-void
.end method


# virtual methods
.method public onDetailsRead(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Z)V
    .locals 0

    return-void
.end method
