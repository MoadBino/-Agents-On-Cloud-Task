import React, { useEffect, useState } from "react";
import axios from "axios";
import "./styel.css";
const CDUComment = ({ method, setOpen, open, pro_id }) => {
  const token = localStorage.getItem("token") || "";
  const [openmodal, setOpenmodal] = useState(false);
  const [comment, setComment] = useState("");;
  const cdu = (method, endpoint) => {
    axios(`http://localhost:5000/comment/${endpoint}/${pro_id}`, {
      method: method,
      data: { comment },
      headers: { Authorization: `Bearer ${token}` },
    })
      .then((res) => {
        console.log(res);
      })
      .catch((err) => {
        console.log(err);
      });
  };
  useEffect(() => {
    if (open) {
      setOpenmodal(true);
    }
  }, [open]);

  return (
    <div>
      <div>
        {openmodal ? (
          <div id="myModal" class="modal">
            <div class="modal-content">
              <button
                className="close"
                onClick={() => {
                  setOpenmodal(false);
                  setOpen(false);
                }}
              >
                X
              </button>
              <p>
                {method === "post"
                  ? "add comment"
                  : method === "put"
                  ? "update comment"
                  : "delete comment"}
              </p>
              {method !== "delete" ? (
                <input onChange={(e) => setComment(e.target.value)}></input>
              ) : (
                ""
              )}
              <button
                id="button"
                onClick={() => {
                  if (method === "post") {
                    cdu("post", "addcomment");
                  } else if (method === "put") {
                    cdu("put", "updatecomment");
                  } else {
                    cdu("delete", "deletecomment");
                  }
                  setOpen(false)
                  setOpenmodal(false);
                }}
              >
                {method === "post"
                  ? "Add "
                  : method === "put"
                  ? "Update"
                  : "Delete"}
              </button>
            </div>
          </div>
        ) : (
          ""
        )}
      </div>
    </div>
  );
};

export default CDUComment;
