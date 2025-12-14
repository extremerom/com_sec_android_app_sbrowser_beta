.class public Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressUiComponent"
.end annotation


# instance fields
.field public final id:I

.field public final isFullLine:Z

.field public final isRequired:Z

.field public final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->id:I

    iput-object p2, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->label:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->isRequired:Z

    iput-boolean p4, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;->isFullLine:Z

    return-void
.end method
